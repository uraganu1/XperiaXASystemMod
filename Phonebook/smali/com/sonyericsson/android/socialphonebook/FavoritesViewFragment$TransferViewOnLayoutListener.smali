.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferViewOnLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1037
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1036
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;II)V

    .line 1035
    return-void
.end method
