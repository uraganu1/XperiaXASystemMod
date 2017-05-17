.class public Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;
.super Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;
.source "DocomoPrefixPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static final CONTEXT_MENU_ID_INTERNATIONAL_CALL:I = 0x1f6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutoConvertFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->TAG:Ljava/lang/String;

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
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuAbstractPlugin;->bind(Landroid/app/Activity;)Z

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    const-string/jumbo v3, "autoconversion_enable"

    .line 43
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "autoConvert":I
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mAutoConvertFlag:Z

    .line 48
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin$DocomoPrefixBroadcastReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sony.android.CALL_SETTINGS_BROADCAST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    :cond_0
    return v2

    .line 46
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected needInternationalPrefix()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 87
    return v3

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "#31#+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#31#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    const-string/jumbo v2, "#31#+"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 91
    return v3

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "*31#+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*31#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    const-string/jumbo v2, "*31#+"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mCurrentPhoneNumber:Ljava/lang/String;

    .line 95
    return v3

    .line 98
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    return-void
.end method

.method protected startCallSettingService(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    .line 109
    const-string/jumbo v2, "com.sony.android.CALL_SETTINGS_SERVICE"

    .line 108
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getExplicitServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->isServiceForIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    :goto_0
    return-void

    .line 114
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/DocomoPrefixPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No DOCOMO_CALL_SETTINGS_SERVICE found on device"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
