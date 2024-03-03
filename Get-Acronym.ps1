function Get-Acronym
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$message
    )
    
    # \s regex matches a whitespace character.
    # .ToUpper() captilizes all the words
    $split = ($message -split "\s").ToUpper()
    
    # Final output array.
    $output = @()

    # Foreach all splits and grabs the first character of each word/string using [0].
    foreach ($word in $split)
    {
        $output += $word[0]
    }
    
    # Each item in the array is joined together in a single string.
    $output -join ""
}