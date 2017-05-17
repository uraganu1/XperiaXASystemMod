.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler$1;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->internalDrop(Lcom/sonyericsson/movablepanes/transfer/TransferTarget$DropListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->notifyDataSetChanged()V

    .line 844
    return-void
.end method
