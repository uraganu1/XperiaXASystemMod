.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;
.super Ljava/lang/Object;
.source "FavoritesViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->bindPaneView(ILcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;
    .param p2, "val$id"    # J

    .prologue
    .line 511
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    iput-wide p2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v3

    move-object v1, v2

    check-cast v1, Landroid/graphics/Rect;

    .line 516
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;->val$id:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 517
    const/4 v5, 0x4

    .line 515
    invoke-static {v3, v1, v4, v5, v2}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 514
    return-void
.end method
