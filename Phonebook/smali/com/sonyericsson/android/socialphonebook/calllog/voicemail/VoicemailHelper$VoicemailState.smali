.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;
.super Ljava/lang/Object;
.source "VoicemailHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoicemailState"
.end annotation


# instance fields
.field public orangeVvmExistsAndIsConfigured:Z

.field public overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field public shouldFilterVoicemail:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->orangeVvmExistsAndIsConfigured:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->shouldFilterVoicemail:Z

    .line 218
    return-void
.end method


# virtual methods
.method public setShouldFilterVoicemail(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "stateCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    :cond_0
    const-string/jumbo v2, "source_package"

    .line 234
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "configuration_state"

    .line 236
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 238
    .local v0, "configurationStatus":I
    const-string/jumbo v2, "com.orange.vvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    if-nez v0, :cond_1

    .line 241
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->orangeVvmExistsAndIsConfigured:Z

    .line 242
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->shouldFilterVoicemail:Z

    .line 243
    return-void

    .line 246
    :cond_1
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->orangeVvmExistsAndIsConfigured:Z

    .line 247
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->shouldFilterVoicemail:Z

    .line 248
    return-void

    .line 251
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    .end local v0    # "configurationStatus":I
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method
