.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->setupDataPickDialog(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;
    .param p2, "val$cursor"    # Landroid/database/Cursor;
    .param p3, "val$title"    # Ljava/lang/String;

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 1441
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 1443
    .local v4, "listView":Landroid/widget/ListView;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v6, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1444
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1445
    .local v2, "itemId":J
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$cursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "itemData":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1447
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1448
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->val$title:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1449
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    invoke-virtual {v4, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1450
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->removeContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    .line 1457
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1458
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    .line 1440
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .end local v1    # "itemData":Ljava/lang/String;
    .end local v2    # "itemId":J
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 1451
    .restart local v0    # "item":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .restart local v1    # "itemData":Ljava/lang/String;
    .restart local v2    # "itemId":J
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->availableSize()I

    move-result v6

    if-lez v6, :cond_2

    .line 1452
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z

    goto :goto_0

    .line 1454
    :cond_2
    invoke-virtual {v4, p2, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1455
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V

    goto :goto_0
.end method
