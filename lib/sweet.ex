import SweetXml
require IEx

defmodule Sweet do
	def main(url) do
		price_list(url).body |> xpath(~x"//item/name/text()"l) |> IO.puts
	end

	defp price_list(url) do
		HTTPotion.get url, [timeout: 10_000_000]
	end
end
