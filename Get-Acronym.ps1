function Get-Acronym
{
    param (
        [Parameter(Mandatory=$true)]
        [string]$message
    )
    
    # \s regex matches a whitespace character.
    # -replace [^A-Za-z0-9] removes all special characters.
    # -replace [0-9] removes all numbers.
    # .ToUpper() captilizes all the words.
    $split = ($message -split "\s" -replace "[^A-Za-z0-9]" -replace "[0-9]").ToUpper()
    
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