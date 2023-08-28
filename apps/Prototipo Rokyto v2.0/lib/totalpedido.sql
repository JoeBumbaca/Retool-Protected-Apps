select sum(subtotal) as total
from tbl_order_detail
where order_id={{urlparams.pedido}}