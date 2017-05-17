.class public Lcom/android/contacts/detail/prefix/NotSupportedPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;
.source "NotSupportedPrefixPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 29
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 39
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->unbind()V

    .line 24
    return-void
.end method
