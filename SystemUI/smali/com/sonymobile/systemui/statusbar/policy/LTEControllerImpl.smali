.class public Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;
.super Ljava/lang/Object;
.source "LTEControllerImpl.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/LTEController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mEnabled:Z

.field private mLte:I

.field private mNonLte:I

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->refreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "LTEControllerImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    .line 47
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;-><init>(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getDefaultDataSubId()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSubId:I

    .line 59
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 61
    iget v5, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSubId:I

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 59
    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworkMode()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    .line 63
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    .line 64
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "networks":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getNetwork(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    .line 66
    invoke-direct {p0, v0, v3}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getNetwork(Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I

    .line 56
    return-void

    .end local v0    # "networks":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 63
    goto :goto_0
.end method

.method private getDefaultDataSubId()I
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 214
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    return v0

    .line 217
    :cond_0
    const v1, 0x7fffffff

    return v1
.end method

.method private getNetwork(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "availableNetworks"    # Ljava/lang/String;
    .param p2, "firstLte"    # Z

    .prologue
    const/4 v5, 0x7

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    const-string/jumbo v4, ","

    .line 176
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v2, "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 181
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    .local v1, "network":I
    if-eqz p2, :cond_0

    if-le v1, v5, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    if-nez p2, :cond_1

    if-gt v1, v5, :cond_1

    .line 186
    return v1

    .line 188
    .end local v1    # "network":I
    :catch_0
    move-exception v3

    .line 179
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 192
    :cond_2
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    return v4
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 124
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "returnValue":I
    sget-boolean v1, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LTEControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LTEService getState status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return v0
.end method

.method private static getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string/jumbo v3, ""

    .line 154
    .local v3, "preferredNetworks":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 155
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "com.android.phone"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 158
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v6, "preferred_network_mode_marshal"

    const-string/jumbo v7, "string"

    .line 159
    const-string/jumbo v8, "com.android.phone"

    .line 158
    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, "resourceId":I
    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resourceId":I
    :cond_0
    :goto_0
    return-object v3

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "LTEControllerImpl"

    const-string/jumbo v7, "No preferred network found"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLteNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-static {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworks(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "preferredNetworks":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    .line 137
    const-string/jumbo v5, ","

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v2, "networks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .local v1, "network":I
    const/4 v5, 0x7

    if-le v1, v5, :cond_0

    .line 142
    const/4 v5, 0x1

    return v5

    .line 144
    .end local v1    # "network":I
    :catch_0
    move-exception v3

    .line 138
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    :cond_1
    return v6
.end method

.method private lteSettingsChanged()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLTEEnabled()Z

    move-result v2

    .line 110
    .local v2, "isEnabled":Z
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;

    .line 111
    .local v0, "cb":Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;
    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;->onLTESettingsChanged(Z)V

    goto :goto_0

    .line 108
    .end local v0    # "cb":Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;
    :cond_0
    return-void
.end method

.method private lteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->isLTEEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;->onLTESettingsChanged(Z)V

    .line 115
    return-void
.end method

.method private refreshState()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getPreferredNetworkMode()I

    move-result v0

    .line 197
    .local v0, "newType":I
    if-le v0, v2, :cond_1

    .line 198
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    if-gt v1, v2, :cond_0

    .line 199
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I

    .line 201
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    .line 208
    :goto_0
    iput v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged()V

    .line 195
    return-void

    .line 203
    :cond_1
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    if-le v1, v2, :cond_2

    .line 204
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mCurrentState:I

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    .line 206
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public addSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->updateNetworkObserver()V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V

    .line 102
    return-void
.end method

.method public isLTEEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mEnabled:Z

    return v0
.end method

.method public removeSettingsChangedCallback(Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public setLTEEnabled(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 90
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getDefaultDataSubId()I

    move-result v1

    .line 92
    .local v1, "subId":I
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mLte:I

    .line 93
    .local v0, "newType":I
    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    .line 94
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->lteSettingsChanged()V

    .line 96
    .end local v0    # "newType":I
    .end local v1    # "subId":I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 92
    .restart local v1    # "subId":I
    :cond_1
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mNonLte:I

    .restart local v0    # "newType":I
    goto :goto_0
.end method

.method public updateNetworkObserver()V
    .locals 5

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->getDefaultDataSubId()I

    move-result v0

    .line 223
    .local v0, "subId":I
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSubId:I

    if-eq v1, v0, :cond_0

    .line 224
    iput v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mSubId:I

    .line 225
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 226
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->refreshState()V

    .line 221
    :cond_0
    return-void
.end method
