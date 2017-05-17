.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
.super Ljava/lang/Enum;
.source "VoicemailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

.field public static final enum STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

.field public static final enum STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

.field public static final enum STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    const-string/jumbo v1, "STATUS_ACTION_CALL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    const-string/jumbo v1, "STATUS_ACTION_CONFIGURE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    const-string/jumbo v1, "STATUS_ACTION_NOACTION"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    return-object v0
.end method
