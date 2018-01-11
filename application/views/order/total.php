 <?php $this->load->view('header'); ?>
    <!-- Page Content -->
    <div class="container">

        <div class="row">
 

            <div class="col-md-12">
			<h4>Order Detail</h4>
			
  <?php echo form_open('cart/update'); ?>

<table cellpadding="6" cellspacing="1" style="width:100%" border="0">

<tr>
  <th>QTY</th>
  <th>Item Description</th>
  <th style="text-align:right">Item Price</th>
  <th style="text-align:right">Sub-Total</th>
  <th style="text-align:right">Action</th>
</tr>

<?php $i = 1; ?>

<?php foreach ($this->cart->contents() as $items): ?>

	<?php echo form_hidden('rowid[]', $items['rowid']); ?>

	<tr>
	  <td> 
	  <?php echo form_input(array('name' => 'qty[]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5')); ?></td>
	  <td>
		<?php echo $items['name']; ?>

			<?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>

				<p>
					<?php foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>

						<strong><?php echo $option_name; ?>:</strong> <?php echo $option_value; ?><br />

					<?php endforeach; ?>
				</p>

			<?php endif; ?>

	  </td>
	  <td style="text-align:right"><?php echo $this->cart->format_number($items['price']); ?></td>
	  <td style="text-align:right">$<?php echo $this->cart->format_number($items['subtotal']); ?></td>
	  <td style="text-align:right"><?php echo anchor('cart/remove/'.$items['rowid'],'Delete'); ?>   </td>
	</tr>

<?php $i++; ?>

<?php endforeach; ?>

<tr>
  <td colspan="2"></td>
  <td class="right"><strong>Total</strong></td>
  <td class="right">$<?php echo $this->cart->format_number($this->cart->total()); ?></td>
</tr>

</table>
 <?php if($this->cart->total_items() > 0){ ?>
<p><?php echo form_submit('', 'Update your Cart'); ?></p>
<?php } ?>

 

            </div>

        </div>

    </div>
    <!-- /.container -->
 <?php $this->load->view('footer'); ?>
   