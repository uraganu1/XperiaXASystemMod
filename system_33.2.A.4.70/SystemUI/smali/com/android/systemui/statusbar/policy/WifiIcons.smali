.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_AOSP:[[I

.field static final WIFI_SIGNAL_STRENGTH_INOUT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x7f0201f0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0201ee

    .line 37
    new-array v0, v9, [[I

    .line 40
    const v1, 0x7f0201f5

    .line 41
    const v2, 0x7f0201fa

    .line 42
    const v3, 0x7f0201ff

    .line 38
    filled-new-array {v6, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 45
    const v1, 0x7f0201f5

    .line 46
    const v2, 0x7f0201fa

    .line 47
    const v3, 0x7f0201ff

    .line 43
    filled-new-array {v6, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 37
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    new-array v0, v9, [[I

    .line 52
    const v1, 0x7f0201ed

    .line 53
    const v2, 0x7f0201ef

    .line 54
    const v3, 0x7f0201f4

    .line 55
    const v4, 0x7f0201f9

    .line 56
    const v5, 0x7f0201fe

    .line 52
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 59
    const v1, 0x7f0201f5

    .line 60
    const v2, 0x7f0201fa

    .line 61
    const v3, 0x7f0201ff

    .line 57
    filled-new-array {v6, v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 51
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_AOSP:[[I

    .line 64
    new-array v0, v9, [[I

    .line 65
    const v1, 0x7f0200c1

    .line 66
    const v2, 0x7f0200c2

    .line 67
    const v3, 0x7f0200c3

    .line 68
    const v4, 0x7f0200c4

    .line 69
    const v5, 0x7f0200c5

    .line 65
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 70
    const v1, 0x7f0200c8

    .line 71
    const v2, 0x7f0200c9

    .line 72
    const v3, 0x7f0200ca

    .line 73
    const v4, 0x7f0200cb

    .line 74
    const v5, 0x7f0200cc

    .line 70
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 64
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [[I

    .line 84
    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 90
    const v1, 0x7f0201f1

    .line 91
    const v2, 0x7f0201f3

    .line 92
    const v3, 0x7f0201f2

    .line 89
    filled-new-array {v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 94
    const v1, 0x7f0201f5

    .line 95
    const v2, 0x7f0201f6

    .line 96
    const v3, 0x7f0201f8

    .line 97
    const v4, 0x7f0201f7

    .line 94
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v9

    .line 99
    const v1, 0x7f0201fa

    .line 100
    const v2, 0x7f0201fb

    .line 101
    const v3, 0x7f0201fd

    .line 102
    const v4, 0x7f0201fc

    .line 99
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 104
    const v1, 0x7f0201ff

    .line 105
    const v2, 0x7f020200

    .line 106
    const v3, 0x7f020202

    .line 107
    const v4, 0x7f020201

    .line 104
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 83
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_INOUT:[[I

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
