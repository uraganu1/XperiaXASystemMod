.class public final enum Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
.super Ljava/lang/Enum;
.source "CallLogFilterDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallLogFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum INCOMING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum MISSED_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum OUTGOING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

.field public static final enum VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "ALL_CALLS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "VOICEMAIL_CALLS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "MISSED_CALLS"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->MISSED_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "INCOMING_CALLS"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->INCOMING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "OUTGOING_CALLS"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->OUTGOING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "VOICE_CALLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const-string/jumbo v1, "VIDEO_CALLS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->MISSED_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->INCOMING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->OUTGOING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    return-object v0
.end method
