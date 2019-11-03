<template>
  <section class="container">
    <div>
      <app-logo/>
      <h1 class="title">
        V4A
      </h1>
      <h2 class="subtitle">
        Korea DID Council
      </h2>
    </div>
  </section>
</template>

<script>
import AppLogo from '~/components/AppLogo.vue'
//import EthrDID from 'ethr-did'

export default {
	components: {
		AppLogo
	},
	data() {
		return {
			tokenName: '',
			recipentAddress: '',
			transferReceipt: '',
			amount: 0
		}
	},
	created() {
		// const keypair = EthrDID.createKeyPair()
		// console.log(keypair)
	},
	methods: {
	}
}
</script>

<style>
.container {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.title {
	font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
		'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif; /* 1 */
	display: block;
	font-weight: 300;
	font-size: 100px;
	color: #35495e;
	letter-spacing: 1px;
}

.subtitle {
	font-weight: 300;
	font-size: 42px;
	color: #526488;
	word-spacing: 5px;
	padding-bottom: 15px;
}

.paragraph-title {
	font-weight: 300;
	font-size: 20px;
	color: #35495e;
	word-spacing: 5px;
	padding: 15px 0;
}

.receipt-box {
	padding-top: 15px;
	width: 900px;
	word-break: break-all;
}

.row {
	padding: 10px;
}
</style>
