.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTransferListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    return-void
.end method


# virtual methods
.method public onTransferEnd(Lcom/sonyericsson/movablepanes/transfer/TransferTarget;Z)V
    .locals 1
    .param p1, "target"    # Lcom/sonyericsson/movablepanes/transfer/TransferTarget;
    .param p2, "successful"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;->onRearrangeStopped()V

    .line 969
    :cond_0
    return-void
.end method

.method public onTransferStart()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;->onRearrangeStarted()V

    .line 962
    :cond_0
    return-void
.end method
