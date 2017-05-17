.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->get(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v0

    .line 1004
    .local v0, "contactInfo":Lcom/sonyericsson/movablepanes/data/ContactInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;J)J

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1008
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get14(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get12(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->transferView(Lcom/sonyericsson/movablepanes/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)V

    .line 1009
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->notifyDataSetChanged()V

    .line 1010
    const/4 v1, 0x1

    return v1
.end method
