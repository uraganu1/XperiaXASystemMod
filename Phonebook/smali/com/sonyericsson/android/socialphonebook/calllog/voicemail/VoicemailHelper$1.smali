.class final Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$1;
.super Ljava/lang/Object;
.source "VoicemailHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getTopPriorityOverallState(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;)I
    .locals 2
    .param p1, "a"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .param p2, "b"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$1;->compare(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;)I

    move-result v0

    return v0
.end method
