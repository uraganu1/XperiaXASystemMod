.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->notifyDataSetChanged()V

    .line 152
    :cond_0
    return-void
.end method
