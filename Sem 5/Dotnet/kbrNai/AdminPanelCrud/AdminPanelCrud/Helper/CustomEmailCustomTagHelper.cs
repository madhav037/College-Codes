using Microsoft.AspNetCore.Razor.TagHelpers;
namespace AdminPanelCrud.Helper

{
    public class CustomEmailCustomTagHelper : TagHelper
    {
        public string myemail {  get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "a";
            output.Attributes.SetAttribute("href", myemail);
            output.Attributes.SetAttribute("target", "_blank");
            output.Content.SetContent(myemail);

        }
    }
}
