.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$5;
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
    .line 259
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "disable_sim_account"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string/jumbo v1, "isPickMultiContactsWithoutProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    const/16 v2, 0x2b

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method
