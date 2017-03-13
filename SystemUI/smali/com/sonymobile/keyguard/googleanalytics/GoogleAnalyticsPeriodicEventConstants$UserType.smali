.class public final enum Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;
.super Ljava/lang/Enum;
.source "GoogleAnalyticsPeriodicEventConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum AdminUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum GuestUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum Owner:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum PrimaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum RestrictedUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum SecondaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

.field public static final enum Unknown:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;


# instance fields
.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "Owner"

    .line 336
    const-string/jumbo v2, "Owner"

    .line 332
    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Owner:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 338
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "GuestUser"

    .line 342
    const-string/jumbo v2, "Guest-User"

    .line 338
    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->GuestUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 344
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "RestrictedUser"

    .line 348
    const-string/jumbo v2, "Restricted-User"

    .line 344
    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 350
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "SecondaryUser"

    .line 354
    const-string/jumbo v2, "Secondary-User"

    .line 350
    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 356
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "PrimaryUser"

    .line 359
    const-string/jumbo v2, "Primary-User"

    .line 356
    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 361
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "AdminUser"

    .line 365
    const-string/jumbo v2, "Admin-User"

    .line 361
    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->AdminUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 367
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const-string/jumbo v1, "Unknown"

    .line 372
    const-string/jumbo v2, "Unknown"

    .line 367
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Unknown:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 331
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Owner:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->GuestUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->AdminUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Unknown:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->$VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "iLabel"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 380
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    const-class v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->$VALUES:[Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    return-object v0
.end method
