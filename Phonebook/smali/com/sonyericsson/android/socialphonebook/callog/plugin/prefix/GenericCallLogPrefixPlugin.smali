.class public Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;
.source "GenericCallLogPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->bind(Landroid/app/Activity;)Z

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin$PrefixBroadcastReceiver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sony.android.CALL_SETTINGS_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->startCallSettingService()V

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 72
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 73
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "number":Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPresentationType(Landroid/view/ContextMenu$ContextMenuInfo;)I

    move-result v1

    .line 76
    .local v1, "presentation":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 76
    if-nez v2, :cond_0

    .line 82
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "presentation":I
    :cond_2
    const/16 v2, 0x1f5

    const v3, 0x7f09027b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e024d

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 61
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->startCallSettingService()V

    .line 64
    const/4 v1, 0x1

    return v1

    .line 67
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    const v1, 0x7f0e024d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 52
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    :cond_0
    return-void
.end method

.method public startCallSettingService()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    .line 103
    const-string/jumbo v2, "com.sony.android.CALL_SETTINGS_SERVICE"

    .line 102
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getExplicitServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->isServiceForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/callog/plugin/prefix/GenericCallLogPrefixPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No CALL_SETTINGS_SERVICE found on device"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
