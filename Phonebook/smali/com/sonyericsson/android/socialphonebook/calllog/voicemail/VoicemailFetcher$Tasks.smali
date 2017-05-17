.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;
.super Ljava/lang/Enum;
.source "VoicemailFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

.field public static final enum CHECK_CONTENT_AFTER_CHANGE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

.field public static final enum CHECK_FOR_CONTENT:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

.field public static final enum PREPARE_MEDIA_PLAYER:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    const-string/jumbo v1, "CHECK_FOR_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_FOR_CONTENT:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    const-string/jumbo v1, "CHECK_CONTENT_AFTER_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    const-string/jumbo v1, "PREPARE_MEDIA_PLAYER"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_FOR_CONTENT:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$Tasks;

    return-object v0
.end method
