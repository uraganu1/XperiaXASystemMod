.class public Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;
.source "DocomoContactDetailsPrefixPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->startCallSettingService(I)V

    .line 41
    return v2

    .line 42
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->needInternationalPrefix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->startCallSettingService(I)V

    .line 48
    :goto_0
    return v2

    .line 46
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->startCallSettingService(I)V

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v1, 0x7f09027b

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 29
    iget-boolean v0, p0, Lcom/android/contacts/detail/prefix/DocomoContactDetailsPrefixPlugin;->mAutoConvertFlag:Z

    if-nez v0, :cond_0

    .line 30
    const/16 v0, 0x1f6

    .line 31
    const v1, 0x7f09027c

    .line 30
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 25
    :cond_0
    return-void
.end method
