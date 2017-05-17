.class public Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;
.source "GenericContactDetailsPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->bind(Landroid/app/Activity;)Z

    .line 37
    iget-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin$PrefixBroadcastReceiver;-><init>(Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;)V

    iput-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iget-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sony.android.CALL_SETTINGS_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;->getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->startCallSettingService()V

    .line 56
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
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

    .line 47
    iget-object v0, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f09027b

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    return-void
.end method

.method protected startCallSettingService()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    .line 67
    const-string/jumbo v2, "com.sony.android.CALL_SETTINGS_SERVICE"

    .line 66
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getExplicitServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->isServiceForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v1, Lcom/android/contacts/detail/prefix/GenericContactDetailsPrefixPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No CALL_SETTINGS_SERVICE found on device"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
