.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

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

    .line 50
    new-array v0, v9, [[I

    .line 51
    const v1, 0x7f0200c1

    .line 52
    const v2, 0x7f0200c2

    .line 53
    const v3, 0x7f0200c3

    .line 54
    const v4, 0x7f0200c4

    .line 55
    const v5, 0x7f0200c5

    .line 51
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 56
    const v1, 0x7f0200c8

    .line 57
    const v2, 0x7f0200c9

    .line 58
    const v3, 0x7f0200ca

    .line 59
    const v4, 0x7f0200cb

    .line 60
    const v5, 0x7f0200cc

    .line 56
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 50
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [[I

    .line 70
    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 76
    const v1, 0x7f0201f1

    .line 77
    const v2, 0x7f0201f3

    .line 78
    const v3, 0x7f0201f2

    .line 75
    filled-new-array {v10, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 80
    const v1, 0x7f0201f5

    .line 81
    const v2, 0x7f0201f6

    .line 82
    const v3, 0x7f0201f8

    .line 83
    const v4, 0x7f0201f7

    .line 80
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v9

    .line 85
    const v1, 0x7f0201fa

    .line 86
    const v2, 0x7f0201fb

    .line 87
    const v3, 0x7f0201fd

    .line 88
    const v4, 0x7f0201fc

    .line 85
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 90
    const v1, 0x7f0201ff

    .line 91
    const v2, 0x7f020200

    .line 92
    const v3, 0x7f020202

    .line 93
    const v4, 0x7f020201

    .line 90
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 69
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
