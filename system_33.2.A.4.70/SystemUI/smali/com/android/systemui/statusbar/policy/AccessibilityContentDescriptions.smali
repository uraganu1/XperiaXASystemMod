.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH_5_GRADES:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 19
    const v0, 0x7f0900d8

    .line 20
    const v1, 0x7f0900d9

    .line 21
    const v2, 0x7f0900da

    .line 22
    const v3, 0x7f0900db

    .line 23
    const v4, 0x7f0900dd

    .line 18
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_5_GRADES:[I

    .line 36
    const v0, 0x7f0900de

    .line 37
    const v1, 0x7f0900df

    .line 38
    const v2, 0x7f0900e0

    .line 39
    const v3, 0x7f0900e1

    .line 40
    const v4, 0x7f0900e2

    .line 35
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 44
    const v0, 0x7f09003c

    .line 45
    const v1, 0x7f09003d

    .line 46
    const v2, 0x7f09003e

    .line 47
    const v3, 0x7f09003f

    .line 48
    const v4, 0x7f090040

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 54
    const v0, 0x7f0900ea

    .line 55
    const v1, 0x7f0900eb

    .line 53
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 15
    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f0900d8
        0x7f0900d9
        0x7f0900da
        0x7f0900db
        0x7f0900dc
        0x7f0900dd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
