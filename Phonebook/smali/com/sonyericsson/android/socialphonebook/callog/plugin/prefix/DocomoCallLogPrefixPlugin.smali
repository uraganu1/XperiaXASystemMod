.class public final Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;
.source "DocomoCallLogPrefixPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;-><init>()V

    return-void
.end method

.method private onContextMenuItemSelected(I)Z
    .locals 2
    .param p1, "selectedItemId"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    .line 87
    return v1

    .line 88
    :cond_0
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->needInternationalPrefix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    .line 94
    :goto_0
    return v1

    .line 92
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private onOptionMenuItemSelected(I)Z
    .locals 2
    .param p1, "selectedItemId"    # I

    .prologue
    const/4 v1, 0x1

    .line 100
    const v0, 0x7f0e024d

    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    .line 102
    return v1

    .line 103
    :cond_0
    const v0, 0x7f0e024e

    if-ne p1, v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->needInternationalPrefix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    .line 109
    :goto_0
    return v1

    .line 107
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->startCallSettingService(I)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->onContextMenuItemSelected(I)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 61
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 62
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "number":Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPresentationType(Landroid/view/ContextMenu$ContextMenuInfo;)I

    move-result v1

    .line 65
    .local v1, "presentation":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 67
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 71
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "presentation":I
    :cond_2
    const/16 v2, 0x1f5

    const v3, 0x7f09027b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 72
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mAutoConvertFlag:Z

    if-nez v2, :cond_3

    .line 73
    const/16 v2, 0x1f6

    .line 74
    const v3, 0x7f09027c

    .line 73
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 60
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 51
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 56
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->onOptionMenuItemSelected(I)Z

    move-result v1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 37
    const v2, 0x7f0e024d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 38
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 41
    :cond_0
    const v2, 0x7f0e024e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/DocomoCallLogPrefixPlugin;->mAutoConvertFlag:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 36
    :cond_2
    return-void
.end method
