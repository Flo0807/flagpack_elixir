defmodule Flagpack.HelpersTest do
  use ExUnit.Case, async: true

  alias Flagpack.Helpers

  describe "templatize_ids/1" do
    test "converts simple id attribute to HEEx template syntax" do
      input = ~s(<mask id="ABW_svg__a" width="32" height="24"></mask>)
      result = Helpers.templatize_ids(input)

      assert result == ~s(<mask id={"ABW_svg__a_\#{@id}"} width="32" height="24"></mask>)
    end

    test "converts mask url reference with corresponding id definition" do
      input = """
      <mask id="ABW_svg__a" width="32" height="24" maskUnits="userSpaceOnUse">
        <path fill="#fff" d="M0 0h32v24H0z"/>
      </mask>
      <g mask="url(#ABW_svg__a)">
        <path fill="#0052B4" d="M0 0h32v24H0z"/>
      </g>
      """

      expected = """
      <mask id={"ABW_svg__a_\#{@id}"} width="32" height="24" maskUnits="userSpaceOnUse">
        <path fill="#fff" d="M0 0h32v24H0z"/>
      </mask>
      <g mask={"url(#ABW_svg__a_\#{@id})"}>
        <path fill="#0052B4" d="M0 0h32v24H0z"/>
      </g>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end

    test "converts fill url reference with corresponding gradient definition" do
      input = """
      <defs>
        <linearGradient id="gradient_a" x1="0%" y1="0%" x2="100%" y2="0%">
          <stop offset="0%" stop-color="#FF6B35"/>
          <stop offset="100%" stop-color="#F7931E"/>
        </linearGradient>
      </defs>
      <path fill="url(#gradient_a)" d="M0 0h32v24H0z"/>
      """

      expected = """
      <defs>
        <linearGradient id={"gradient_a_\#{@id}"} x1="0%" y1="0%" x2="100%" y2="0%">
          <stop offset="0%" stop-color="#FF6B35"/>
          <stop offset="100%" stop-color="#F7931E"/>
        </linearGradient>
      </defs>
      <path fill={"url(#gradient_a_\#{@id})"} d="M0 0h32v24H0z"/>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end

    test "converts filter url reference with corresponding filter definition" do
      input = """
      <defs>
        <filter id="filter_blur" x="0%" y="0%" width="100%" height="100%">
          <feGaussianBlur stdDeviation="2"/>
        </filter>
      </defs>
      <g filter="url(#filter_blur)">
        <rect width="32" height="24" fill="#FF0000"/>
      </g>
      """

      expected = """
      <defs>
        <filter id={"filter_blur_\#{@id}"} x="0%" y="0%" width="100%" height="100%">
          <feGaussianBlur stdDeviation="2"/>
        </filter>
      </defs>
      <g filter={"url(#filter_blur_\#{@id})"}>
        <rect width="32" height="24" fill="#FF0000"/>
      </g>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end

    test "does not modify SVG without IDs or URL references" do
      input = """
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 32 24">
        <path fill="#F7FCFF" d="M0 0h32v24H0z"/>
        <path fill="#E31D1C" d="M0 14.667v2h32v-2H0z"/>
        <path fill="#FFDA44" d="M0 12h32v2.667H0z"/>
      </svg>
      """

      result = Helpers.templatize_ids(input)
      assert result == input
    end

    test "handles edge case with empty or whitespace-only SVG" do
      assert Helpers.templatize_ids("") == ""
      assert Helpers.templatize_ids("   ") == "   "
      assert Helpers.templatize_ids("\n\t\r\n") == "\n\t\r\n"
    end

    test "handles SVG with only URL references but no ID definitions" do
      input = """
      <defs>
        <mask id="external_mask"></mask>
        <linearGradient id="external_gradient"></linearGradient>
        <filter id="external_filter"></filter>
      </defs>
      <g mask="url(#external_mask)" fill="url(#external_gradient)" filter="url(#external_filter)"></g>
      """

      expected = """
      <defs>
        <mask id={"external_mask_\#{@id}"}></mask>
        <linearGradient id={"external_gradient_\#{@id}"}></linearGradient>
        <filter id={"external_filter_\#{@id}"}></filter>
      </defs>
      <g mask={"url(#external_mask_\#{@id})"} fill={"url(#external_gradient_\#{@id})"} filter={"url(#external_filter_\#{@id})"}></g>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end

    test "handles multiple attribute types in single element" do
      input = """
      <defs>
        <mask id="mask_ref"></mask>
        <linearGradient id="fill_ref"></linearGradient>
        <filter id="filter_ref"></filter>
      </defs>
      <rect id="multi_attr" mask="url(#mask_ref)" fill="url(#fill_ref)" filter="url(#filter_ref)" width="100"/>
      """

      expected = """
      <defs>
        <mask id={"mask_ref_\#{@id}"}></mask>
        <linearGradient id={"fill_ref_\#{@id}"}></linearGradient>
        <filter id={"filter_ref_\#{@id}"}></filter>
      </defs>
      <rect id={"multi_attr_\#{@id}"} mask={"url(#mask_ref_\#{@id})"} fill={"url(#fill_ref_\#{@id})"} filter={"url(#filter_ref_\#{@id})"} width="100"/>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end

    test "handles realistic Aruba flag SVG with multiple masks" do
      input = """
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 32 24">
        <mask id="ABW_svg__a" width="32" height="24" x="0" y="0" maskUnits="userSpaceOnUse">
          <path fill="#fff" d="M0 0h32v24H0z"/>
        </mask>
        <g mask="url(#ABW_svg__a)">
          <path fill="#4AA5EB" d="M0 0h32v24H0z"/>
          <mask id="ABW_svg__b" width="32" height="2" x="0" y="14" maskUnits="userSpaceOnUse">
            <path fill="#fff" d="M0 14h32v2H0z"/>
          </mask>
          <g mask="url(#ABW_svg__b)">
            <path fill="#FFDA44" d="M0 14h32v2H0z"/>
          </g>
        </g>
      </svg>
      """

      expected = """
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 32 24">
        <mask id={"ABW_svg__a_\#{@id}"} width="32" height="24" x="0" y="0" maskUnits="userSpaceOnUse">
          <path fill="#fff" d="M0 0h32v24H0z"/>
        </mask>
        <g mask={"url(#ABW_svg__a_\#{@id})"}>
          <path fill="#4AA5EB" d="M0 0h32v24H0z"/>
          <mask id={"ABW_svg__b_\#{@id}"} width="32" height="2" x="0" y="14" maskUnits="userSpaceOnUse">
            <path fill="#fff" d="M0 14h32v2H0z"/>
          </mask>
          <g mask={"url(#ABW_svg__b_\#{@id})"}>
            <path fill="#FFDA44" d="M0 14h32v2H0z"/>
          </g>
        </g>
      </svg>
      """

      result = Helpers.templatize_ids(input)
      assert result == expected
    end
  end
end
