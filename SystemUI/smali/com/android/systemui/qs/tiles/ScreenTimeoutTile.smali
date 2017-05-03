.class public Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ScreenTimeoutTile.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;
    }
.end annotation

# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation

# instance fields
.field private final mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mClick:Z

.field private final mTimeoutCurrentValue:I

.field private final mTimeoutPreviousValue:I

.field private final mTimeoutMaxIndex:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mValues:[Ljava/lang/String;

.field private mEntries:[Ljava/lang/String;

# static fields
.field private static final SETTINGS_INTENT:Landroid/content/Intent;

# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->updateState(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->SETTINGS_INTENT:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 52
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 51
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 54
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b6

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 53
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 56
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b7

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 55
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 58
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b8

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 57
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 60
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b9

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 59
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 62
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202ba

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    .line 61
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 102
    new-instance v0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->populateList()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    const/16 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutPreviousValue:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    array-length v1, v0

    const/16 v0, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v2

    const/16 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_2

    :cond_3
    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutPreviousValue:I

    goto: goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto: goto_0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method private getScreenTimeout()I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "screen_off_timeout"

    const/4 v2, 0x0

    .line 93
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private populateList()V
    .locals 7

    .prologue
    .line 73
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 75
    .local v3, "mSettingsResources":Landroid/content/res/Resources;
    const-string/jumbo v4, "screen_timeout_entries"

    .line 76
    const-string/jumbo v5, "array"

    const-string/jumbo v6, "com.android.settings"

    .line 75
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "id":I
    if-gtz v2, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    .line 81
    const-string/jumbo v4, "screen_timeout_values"

    .line 82
    const-string/jumbo v5, "array"

    const-string/jumbo v6, "com.android.settings"

    .line 81
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 83
    if-gtz v2, :cond_1

    .line 84
    return-void

    .line 86
    :cond_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "id":I
    .end local v3    # "mSettingsResources":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 242
    const v0, -0x7fffffdd

    return v0
.end method

.method public updateState(Z)V
    .locals 3
    .param p1, "compute timeout"

    .prologue
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutPreviousValue:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iput v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutPreviousValue:I

    goto :goto_0

    # compute timeout from the timeout value
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v2

    const/16 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_2

    :cond_3
    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutPreviousValue:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    return-void
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_0

    const/16 v1, 0x0

    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->updateState(Z)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->updateState(Z)V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->refreshState()V

    .line 133
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutCurrentValue:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_1
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMaxIndex:I

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_2
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_3
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutShort2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_4
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x2

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_5
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x3

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutMedium2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_6
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x4

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mTimeoutLong2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_7
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const/16 v0, 0x5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
	:pswitch_0
	:pswitch_1
	:pswitch_2
	:pswitch_3
	:pswitch_4
	:pswitch_5
    .end packed-switch

    :goto_0
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mClick:Z

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenTimeoutTile;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 112
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
