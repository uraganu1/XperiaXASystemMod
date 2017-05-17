.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;
.super Ljava/lang/Object;
.source "ContactPickFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "focus_search_field"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$10;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1784
    :cond_0
    return-void
.end method
