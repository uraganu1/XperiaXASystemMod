.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$4;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->initializeOutOfBoxView(Landroid/view/View;)V
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
    .line 251
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$4;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Z)V

    .line 253
    return-void
.end method
