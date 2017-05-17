.class public interface abstract Lcom/sonymobile/jms/setting/ImSettingApi;
.super Ljava/lang/Object;
.source "ImSettingApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;,
        Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;,
        Lcom/sonymobile/jms/setting/ImSettingApi$DefaultFileTransferProtocol;,
        Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    }
.end annotation


# virtual methods
.method public abstract getClientMode()Lcom/sonymobile/jms/setting/ImSettingApi$ClientMode;
.end method

.method public abstract getComposingTimeout()J
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getFileMaxSize()I
.end method

.method public abstract getFileResizeOption()Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
.end method

.method public abstract getFileWarningSize()I
.end method

.method public abstract getImTextMessageCharset()Ljava/nio/charset/Charset;
.end method

.method public abstract getMaxGroupConversationMessageLength()I
.end method

.method public abstract getMaxGroupConversationParticipants()I
.end method

.method public abstract getMaxGroupConversationSubjectLength()I
.end method

.method public abstract getMaxOne2OneConversationMessageLength()I
.end method

.method public abstract getMinGroupConversationParticipants()I
.end method

.method public abstract isDisplayedNotificationsEnabled()Z
.end method

.method public abstract isFileTransferAutoAcceptSettingEnabled()Z
.end method

.method public abstract isFileTransfersAutoAccepted()Z
.end method

.method public abstract isFileTransfersAutoAcceptedWhileRoaming()Z
.end method

.method public abstract isImConfigured()Z
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
.end method

.method public abstract setDisplayedNotificationEnabled(Z)V
.end method

.method public abstract setFileResizeOption(Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V
.end method

.method public abstract setFileTransfersAutoAccepted(Z)V
.end method

.method public abstract setFileTransfersAutoAcceptedWhileRoaming(Z)V
.end method
