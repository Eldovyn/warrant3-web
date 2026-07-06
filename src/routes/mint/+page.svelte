<script lang="ts">
  import { Button } from "$lib/components/ui/button/index.js";
  import { ShieldCheck, ChevronLeft, Hexagon, Layers, Key, ImagePlus } from '@lucide/svelte';
</script>

<div class="min-h-screen bg-slate-950 text-slate-50 selection:bg-pink-500/30 overflow-hidden relative font-sans">
  <!-- Glowing background elements -->
  <div class="absolute top-0 right-0 w-1/2 h-1/2 bg-pink-500/10 blur-[120px] rounded-full pointer-events-none"></div>
  <div class="absolute bottom-0 left-0 w-1/2 h-1/2 bg-indigo-500/10 blur-[120px] rounded-full pointer-events-none"></div>

  <!-- Navbar -->
  <header class="relative z-10 container mx-auto px-6 py-6 flex items-center justify-between border-b border-white/5">
    <a href="/" class="flex items-center gap-2 text-slate-300 hover:text-white transition-colors">
      <ChevronLeft class="w-5 h-5" />
      <span class="font-medium">Back to Home</span>
    </a>
    <div class="flex items-center gap-2">
      <ShieldCheck class="w-6 h-6 text-indigo-400" />
      <span class="text-lg font-bold bg-clip-text text-transparent bg-gradient-to-r from-indigo-400 to-purple-400 tracking-tight">
        Warrant3
      </span>
    </div>
  </header>

  <!-- Content -->
  <main class="relative z-10 container mx-auto px-6 pt-16 pb-32 grid lg:grid-cols-2 gap-16 items-center">
    
    <!-- Text/Info Side -->
    <div class="space-y-8">
      <h1 class="text-4xl md:text-5xl font-extrabold tracking-tight">
        Mint a New <br/>
        <span class="text-transparent bg-clip-text bg-gradient-to-r from-pink-400 to-indigo-400">
          Warranty NFT
        </span>
      </h1>
      <p class="text-slate-400 text-lg leading-relaxed max-w-md">
        Digitize your physical product warranties. By minting an NFT, you create an immutable, globally verifiable proof of ownership that lasts forever.
      </p>

      <div class="space-y-6 pt-4">
        <div class="flex items-start gap-4">
          <div class="w-10 h-10 rounded-full bg-indigo-500/20 border border-indigo-500/30 flex items-center justify-center shrink-0">
            <Hexagon class="w-5 h-5 text-indigo-400" />
          </div>
          <div>
            <h4 class="font-semibold text-white mb-1">Decentralized Storage</h4>
            <p class="text-sm text-slate-400">Metadata is stored securely on IPFS.</p>
          </div>
        </div>
        <div class="flex items-start gap-4">
          <div class="w-10 h-10 rounded-full bg-purple-500/20 border border-purple-500/30 flex items-center justify-center shrink-0">
            <Layers class="w-5 h-5 text-purple-400" />
          </div>
          <div>
            <h4 class="font-semibold text-white mb-1">Soulbound or Transferable</h4>
            <p class="text-sm text-slate-400">Choose if the warranty follows the user or the item.</p>
          </div>
        </div>
        <div class="flex items-start gap-4">
          <div class="w-10 h-10 rounded-full bg-pink-500/20 border border-pink-500/30 flex items-center justify-center shrink-0">
            <Key class="w-5 h-5 text-pink-400" />
          </div>
          <div>
            <h4 class="font-semibold text-white mb-1">Cryptographic Proof</h4>
            <p class="text-sm text-slate-400">Unforgeable mathematical certainty of authenticity.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Mint Form Side -->
    <div class="relative w-full max-w-lg mx-auto">
      <div class="absolute inset-0 bg-gradient-to-r from-pink-500/20 to-indigo-500/20 rounded-3xl blur-xl transform scale-105 pointer-events-none"></div>
      
      <div class="relative bg-slate-900/80 backdrop-blur-2xl border border-white/10 rounded-3xl p-8 shadow-2xl">
        <div class="mb-8">
          <h3 class="text-2xl font-bold text-white mb-2">Warranty Details</h3>
          <p class="text-sm text-slate-400">Fill in the product details to generate the metadata.</p>
        </div>

        <form class="space-y-5">
          <!-- Image Upload -->
          <div>
            <label class="block text-sm font-medium text-slate-300 mb-2">NFT Image (Product Photo)</label>
            <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-white/10 border-dashed rounded-xl bg-white/[0.02] hover:bg-white/5 hover:border-indigo-500/50 transition-colors cursor-pointer group">
              <div class="space-y-1 text-center">
                <ImagePlus class="mx-auto h-12 w-12 text-slate-500 group-hover:text-indigo-400 transition-colors" />
                <div class="flex text-sm text-slate-400 justify-center">
                  <label for="file-upload" class="relative cursor-pointer rounded-md font-medium text-indigo-400 hover:text-indigo-300 focus-within:outline-none focus-within:ring-2 focus-within:ring-indigo-500 focus-within:ring-offset-2 focus-within:ring-offset-slate-900">
                    <span>Upload a file</span>
                    <input id="file-upload" name="file-upload" type="file" class="sr-only" accept="image/*">
                  </label>
                  <p class="pl-1">or drag and drop</p>
                </div>
                <p class="text-xs text-slate-500">PNG, JPG, GIF up to 10MB</p>
              </div>
            </div>
          </div>

          <div>
            <label for="product_name" class="block text-sm font-medium text-slate-300 mb-2">Product Name</label>
            <input 
              id="product_name"
              type="text" 
              class="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 focus:outline-none focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 transition-all" 
              placeholder="e.g. Asus ROG Strix G15"
            />
          </div>

          <div>
            <label for="serial_number" class="block text-sm font-medium text-slate-300 mb-2">Serial Number</label>
            <input 
              id="serial_number"
              type="text" 
              class="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 focus:outline-none focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 transition-all" 
              placeholder="e.g. SN-98234-XYZ"
            />
          </div>

          <div class="grid grid-cols-2 gap-4">
            <div>
              <label for="duration" class="block text-sm font-medium text-slate-300 mb-2">Duration (Months)</label>
              <input 
                id="duration"
                type="number" 
                class="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 focus:outline-none focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 transition-all" 
                placeholder="24"
              />
            </div>
            <div>
              <label for="customer_wallet" class="block text-sm font-medium text-slate-300 mb-2">Customer Wallet Address</label>
              <input 
                id="customer_wallet"
                type="text" 
                class="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 focus:outline-none focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 transition-all" 
                placeholder="0x..."
              />
            </div>
          </div>

          <div class="pt-4">
            <Button class="w-full bg-gradient-to-r from-pink-600 to-indigo-600 hover:from-pink-500 hover:to-indigo-500 text-white rounded-xl py-6 h-auto text-lg font-semibold shadow-[0_0_20px_rgba(236,72,153,0.3)] border-none">
              Mint Warranty NFT
            </Button>
            <p class="text-center text-xs text-slate-500 mt-4">
              Requires MetaMask or a Web3 compatible wallet. Gas fees apply.
            </p>
          </div>
        </form>
      </div>
    </div>

  </main>
</div>
