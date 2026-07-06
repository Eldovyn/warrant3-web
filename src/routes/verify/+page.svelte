<script lang="ts">
  import { Button } from "$lib/components/ui/button/index.js";
  import { ShieldCheck, Search, ChevronLeft, CheckCircle2 } from '@lucide/svelte';
</script>

<div class="min-h-screen bg-slate-950 text-slate-50 selection:bg-indigo-500/30 overflow-hidden relative font-sans">
  <!-- Glowing background elements -->
  <div class="absolute top-0 -left-1/4 w-1/2 h-1/2 bg-indigo-500/10 blur-[120px] rounded-full pointer-events-none"></div>
  <div class="absolute bottom-0 -right-1/4 w-1/2 h-1/2 bg-purple-500/10 blur-[120px] rounded-full pointer-events-none"></div>

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
  <main class="relative z-10 container mx-auto px-6 pt-20 pb-32 flex flex-col items-center">
    <div class="text-center max-w-2xl mx-auto mb-12">
      <div class="inline-flex items-center justify-center w-16 h-16 rounded-2xl bg-indigo-500/10 border border-indigo-500/20 mb-6">
        <Search class="w-8 h-8 text-indigo-400" />
      </div>
      <h1 class="text-4xl md:text-5xl font-extrabold tracking-tight mb-4">Verify Warranty</h1>
      <p class="text-slate-400 text-lg">Enter the NFT Token ID or physical serial number to verify the authenticity and status of your warranty on the blockchain.</p>
    </div>

    <!-- Search Box -->
    <div class="w-full max-w-xl bg-white/[0.02] border border-white/10 rounded-2xl p-2 flex items-center shadow-[0_0_30px_rgba(0,0,0,0.5)] backdrop-blur-md">
      <Search class="w-5 h-5 text-slate-400 ml-4 mr-2" />
      <input 
        type="text" 
        placeholder="e.g. #WNT-5738-990-A" 
        class="flex-1 bg-transparent border-none outline-none text-white placeholder-slate-500 px-2 py-4 text-lg"
      />
      <Button class="bg-indigo-600 hover:bg-indigo-700 text-white rounded-xl px-8 py-6 h-auto text-base font-medium shadow-[0_0_15px_rgba(79,70,229,0.3)]">
        Verify
      </Button>
    </div>

    <!-- Example Result Card (hidden by default in real app, showing for visual) -->
    <div class="w-full max-w-xl mt-12 p-1 rounded-2xl bg-gradient-to-br from-indigo-500/20 via-purple-500/10 to-transparent">
      <div class="bg-slate-950/80 backdrop-blur-xl rounded-xl p-8 border border-white/5">
        <div class="flex items-start justify-between mb-8">
          <div>
            <div class="flex items-center gap-2 mb-2">
              <CheckCircle2 class="w-5 h-5 text-emerald-400" />
              <span class="text-emerald-400 font-semibold tracking-wide uppercase text-sm">Authentic Warranty</span>
            </div>
            <h3 class="text-2xl font-bold text-white">Premium Wireless Headphones</h3>
          </div>
          <div class="text-right">
            <div class="text-xs text-slate-500 uppercase tracking-wider mb-1">Token ID</div>
            <div class="font-mono text-sm text-indigo-300 bg-indigo-500/10 px-3 py-1 rounded-md border border-indigo-500/20">#8992</div>
          </div>
        </div>

        <div class="space-y-4">
          <div class="flex justify-between py-3 border-b border-white/5">
            <span class="text-slate-400">Owner</span>
            <span class="text-white font-mono text-sm">0x71C...97d1</span>
          </div>
          <div class="flex justify-between py-3 border-b border-white/5">
            <span class="text-slate-400">Minted Date</span>
            <span class="text-white">Oct 12, 2025</span>
          </div>
          <div class="flex justify-between py-3 border-b border-white/5">
            <span class="text-slate-400">Expiry Date</span>
            <span class="text-white">Oct 12, 2027</span>
          </div>
          <div class="flex justify-between py-3">
            <span class="text-slate-400">Status</span>
            <span class="text-emerald-400 font-medium">Active</span>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>
