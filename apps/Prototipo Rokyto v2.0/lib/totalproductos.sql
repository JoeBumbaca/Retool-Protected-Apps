select count(*) as totalproductos
from tbl_order_detail
where order_id={{urlparams.pedido}}