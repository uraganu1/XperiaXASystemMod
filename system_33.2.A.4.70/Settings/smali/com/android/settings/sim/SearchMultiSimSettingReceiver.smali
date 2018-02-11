.class public Lcom/android/settings/sim/SearchMultiSimSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchMultiSimSettingReceiver.java"


# static fields
.field private static DEBUG:Z

.field private static final RESULT_BUNDLE_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->DEBUG:Z

    .line 39
    const-class v0, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->RESULT_BUNDLE_KEY:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getSearchDataFromResourceArray(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 102
    .local v2, "searchDataArray":Landroid/content/res/TypedArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v3, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 104
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-object v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 64
    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->setResultCode(I)V

    .line 67
    const v5, 0x7f0a0093

    .line 66
    invoke-direct {p0, p1, v5}, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->getSearchDataFromResourceArray(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 68
    .local v4, "searchData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const v5, 0x7f0b0ccf

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 74
    .local v3, "resultBundle":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "dataBundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/sim/SimSettings;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.sonymobile.settings.search.DYNAMIC_RESULT_ACTIVITY_INTENT"

    .line 81
    invoke-virtual {v1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v5, "com.sonymobile.settings.search.DYNAMIC_RESULT_ACTIVITY_NAME"

    .line 83
    const v6, 0x7f0b0a19

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v5, "com.sonymobile.settings.search.DYNAMIC_RESULT_SEARCH_DATA"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    sget-object v5, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->RESULT_BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0, v7, v9, v3}, Lcom/android/settings/sim/SearchMultiSimSettingReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
