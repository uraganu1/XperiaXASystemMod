.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
.super Ljava/lang/Enum;
.source "VoicemailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum INVALID:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum INVITE_FOR_CONFIGURATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum MESSAGE_WAITING:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum NOT_CONFIGURED:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum NO_CONNECTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum NO_DATA:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum NO_DETAILED_NOTIFICATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum NO_NOTIFICATIONS:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public static final enum OK:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;


# instance fields
.field private final mAction:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

.field private mActionUri:Landroid/net/Uri;

.field private final mCallDetailsMessageId:I

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 57
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v1, "NO_CONNECTION"

    .line 59
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 60
    const v5, 0x7f09011b

    move v3, v2

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 59
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_CONNECTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 62
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "NO_DATA"

    .line 66
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    const v8, 0x7f09011c

    move v5, v10

    move v6, v10

    .line 62
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 66
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DATA:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 68
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "MESSAGE_WAITING"

    .line 69
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 70
    const v8, 0x7f09011d

    move v5, v11

    move v6, v11

    .line 68
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 69
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->MESSAGE_WAITING:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 72
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "NO_NOTIFICATIONS"

    .line 73
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 74
    const v8, 0x7f09011e

    move v5, v12

    move v6, v12

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 73
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_NOTIFICATIONS:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 76
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "INVITE_FOR_CONFIGURATION"

    .line 77
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 76
    const/4 v5, 0x4

    .line 77
    const/4 v6, 0x4

    .line 78
    const v8, 0x7f09011f

    .line 76
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 77
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 79
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "NO_DETAILED_NOTIFICATION"

    .line 83
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 79
    const/4 v5, 0x5

    .line 83
    const/4 v6, 0x5

    move v8, v9

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 83
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 85
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "NOT_CONFIGURED"

    .line 86
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 85
    const/4 v5, 0x6

    .line 86
    const/4 v6, 0x6

    move v8, v9

    .line 85
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 86
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NOT_CONFIGURED:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 88
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "OK"

    .line 89
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 88
    const/4 v5, 0x7

    .line 89
    const/4 v6, 0x7

    move v8, v9

    .line 88
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 89
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->OK:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 91
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const-string/jumbo v4, "INVALID"

    .line 92
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 91
    const/16 v5, 0x8

    .line 92
    const/16 v6, 0x8

    move v8, v9

    .line 91
    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V

    .line 92
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVALID:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_CONNECTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DATA:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->MESSAGE_WAITING:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_NOTIFICATIONS:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->NOT_CONFIGURED:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->OK:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->INVALID:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;I)V
    .locals 7
    .param p3, "priority"    # I
    .param p4, "action"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    .param p5, "CallDetailsMessageId"    # I

    .prologue
    .line 103
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;ILandroid/net/Uri;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;ILandroid/net/Uri;)V
    .locals 0
    .param p3, "priority"    # I
    .param p4, "action"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    .param p5, "CallDetailsMessageId"    # I
    .param p6, "actionUri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mPriority:I

    .line 109
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mAction:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 110
    iput p5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mCallDetailsMessageId:I

    .line 111
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mActionUri:Landroid/net/Uri;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mAction:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    return-object v0
.end method

.method public getActionUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mActionUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetailedMessage()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mCallDetailsMessageId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mPriority:I

    return v0
.end method

.method public setActionUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "actionUri"    # Landroid/net/Uri;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->mActionUri:Landroid/net/Uri;

    .line 118
    return-void
.end method
