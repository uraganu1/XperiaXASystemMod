.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;
.source "TerminatingIPCallStreamingSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 3
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 64
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveAudioContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveVideoContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/LiveAudioContent;Lcom/sonymobile/rcs/core/content/LiveVideoContent;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 69
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 70
    return-void
.end method

.method private buildCallInitSdpResponse()Ljava/lang/String;
    .locals 15

    .prologue
    .line 256
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_2

    .line 261
    :goto_0
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v6, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v12, "video"

    .line 264
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v4

    .local v4, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v12, "audio"

    .line 267
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 268
    .local v0, "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;->extractAudioCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v7

    .local v7, "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    const-string/jumbo v12, "video"

    .line 271
    invoke-virtual {v6, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v10

    .local v10, "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v8, 0x0

    .line 273
    .local v8, "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    if-nez v4, :cond_3

    .line 279
    .end local v8    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v12

    invoke-interface {v12}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->getSupportedAudioCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;->negociateAudioCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    .line 281
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    if-eqz v12, :cond_4

    .line 295
    if-nez v4, :cond_6

    .line 320
    :cond_0
    :goto_2
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v13

    invoke-interface {v13}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->getLocalRtpPort()I

    move-result v13

    invoke-static {v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "audioSdp":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 324
    .local v11, "videoSdp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v12

    if-nez v12, :cond_9

    .line 333
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "ntpTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "ipAddress":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "v=0\r\no=- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "s=-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "c="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "t=0 0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "a=sendrcv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 342
    .local v9, "sdp":Ljava/lang/String;
    return-object v9

    .line 257
    .end local v0    # "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v1    # "audioSdp":Ljava/lang/String;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v5    # "ntpTime":Ljava/lang/String;
    .end local v6    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v7    # "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    .end local v9    # "sdp":Ljava/lang/String;
    .end local v10    # "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v11    # "videoSdp":Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Build SDP response for call init"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .restart local v0    # "audio":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v4    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v6    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v7    # "proposedAudioCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    .restart local v8    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v10    # "video":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    :cond_3
    invoke-static {v10}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v8

    .local v8, "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    goto/16 :goto_1

    .line 282
    .end local v8    # "proposedVideoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    :cond_4
    :try_start_1
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_5

    .line 287
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 290
    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v13, 0x9a

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    const/4 v12, 0x0

    .line 291
    return-object v12

    .line 283
    :cond_5
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Proposed audio codecs are not supported"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 342
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_a

    .line 350
    :goto_5
    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v13, 0x1

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    const/4 v12, 0x0

    .line 352
    return-object v12

    .line 295
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v12

    invoke-interface {v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 298
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-nez v12, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v12

    invoke-interface {v12}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/rcs/utils/CodecsUtils;->getVideoCodecProfile1b([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v12

    iput-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 303
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-nez v12, :cond_7

    .line 307
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-nez v12, :cond_8

    .line 311
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 314
    new-instance v12, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v13, 0x9e

    invoke-direct {v12, v13}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    const/4 v12, 0x0

    .line 315
    return-object v12

    .line 304
    :cond_7
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 305
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Video codec profile 1B is selected by default"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    :cond_8
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Proposed video codecs are not supported"

    invoke-virtual {v12, v13}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 324
    .restart local v1    # "audioSdp":Ljava/lang/String;
    .restart local v11    # "videoSdp":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 325
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v12, :cond_1

    .line 326
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v13

    invoke-interface {v13}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v13

    invoke-static {v12, v13, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;ILcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "a=sendrcv\r\n"

    .line 328
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 346
    .end local v1    # "audioSdp":Ljava/lang/String;
    .end local v11    # "videoSdp":Ljava/lang/String;
    .restart local v2    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v13, "Session initiation has failed"

    invoke-virtual {v12, v13, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V
    .locals 4
    .param p1, "error"    # Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->closeMediaSession()V

    .line 240
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    .line 243
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 244
    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;

    invoke-interface {v1, p1}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSessionListener;->handleCallError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public prepareMediaSession()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 367
    .local v5, "remoteParser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    iget-object v7, v5, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v7, v7, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "remoteHost":Ljava/lang/String;
    const-string/jumbo v7, "audio"

    .line 371
    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v2

    .line 372
    .local v2, "mediaAudio":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget v0, v2, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .local v0, "audioRemotePort":I
    const-string/jumbo v7, "video"

    .line 375
    invoke-virtual {v5, v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v3

    .local v3, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const/4 v6, -0x1

    .line 378
    .local v6, "videoRemotePort":I
    if-nez v3, :cond_4

    .line 382
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->setAudioCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 388
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;

    invoke-direct {v8, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;)V

    .line 389
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_6

    .line 395
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->setAudioCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 396
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;

    invoke-direct {v8, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$AudioPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IAudioEventListener;)V

    .line 397
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_7

    .line 415
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-nez v7, :cond_8

    .line 428
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-nez v7, :cond_9

    .line 434
    :cond_1
    :goto_5
    if-nez v3, :cond_a

    .line 446
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-nez v7, :cond_b

    .line 455
    :cond_3
    :goto_7
    return-void

    .line 379
    :cond_4
    iget v6, v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    goto :goto_0

    .line 383
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Extract Audio/Video ports - Done"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set audio codec in the audio renderer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 398
    :cond_7
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set audio codec in the audio player: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedAudioCodec:Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 415
    :cond_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    if-eqz v7, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 419
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 420
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set video codec in the video renderer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 422
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set video codec in the video player: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->selectedVideoCodec:Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 428
    :cond_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    invoke-direct {v8, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 430
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;

    invoke-direct {v8, p0, p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession$VideoPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    goto/16 :goto_5

    .line 435
    :cond_a
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v1

    .line 436
    .local v1, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setOrientationHeaderId(I)V

    .line 439
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->setOrientationHeaderId(I)V

    goto/16 :goto_6

    .line 446
    .end local v1    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :cond_b
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 448
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->open(Ljava/lang/String;I)V

    .line 449
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 450
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Open video renderer with remoteHost ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") and remotePort ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    .line 452
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Open video player on renderer RTP stream"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 77
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/sonymobile/rcs/core/CoreListener;->handleIPCallInvitation(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallStreamingSession;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->waitInvitationAnswer()I

    move-result v0

    .line 89
    .local v0, "answer":I
    if-eq v0, v8, :cond_2

    .line 103
    if-eqz v0, :cond_5

    const/4 v6, 0x3

    .line 120
    if-eq v0, v6, :cond_8

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioRenderer()Lcom/sonymobile/rcs/service/api/client/media/IAudioRenderer;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 146
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->buildCallInitSdpResponse()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "sdp":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_e

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->prepareMediaSession()V

    const/4 v4, 0x0

    .line 159
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getAudioPlayer()Lcom/sonymobile/rcs/service/api/client/media/IAudioPlayer;

    move-result-object v6

    if-nez v6, :cond_f

    .line 170
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/4 v7, 0x1

    const-string/jumbo v8, "Audio player not initialized"

    invoke-direct {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 175
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :goto_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 177
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_11

    .line 181
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v1

    .line 185
    .local v1, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v6

    if-nez v6, :cond_12

    .line 208
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_15

    .line 213
    :goto_4
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v7, 0x65

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 223
    .end local v0    # "answer":I
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v5    # "sdp":Ljava/lang/String;
    :cond_0
    :goto_5
    return-void

    .line 78
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Initiate a new IP call session as terminating"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_16

    .line 221
    :goto_6
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v9, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    goto :goto_5

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "answer":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    :goto_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v3, 0x0

    .line 98
    .local v3, "i":I
    :goto_8
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 102
    return-void

    .line 91
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session has been rejected by user"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 99
    .restart local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 104
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_6

    .line 109
    :goto_9
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->send603Decline(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v3, 0x0

    .line 115
    .restart local v3    # "i":I
    :goto_a
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_7

    .line 119
    return-void

    .line 105
    .end local v3    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session has been rejected on timeout"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 116
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 121
    .end local v3    # "i":I
    :cond_8
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_9

    .line 124
    :goto_b
    return-void

    .line 122
    :cond_9
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session has been canceled"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 129
    :cond_a
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_b

    .line 132
    :goto_c
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v7, 0x97

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 133
    return-void

    .line 130
    :cond_b
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Audio renderer not initialized"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_c

    .line 138
    :cond_c
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_d

    .line 141
    :goto_d
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;

    const/16 v7, 0x98

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;-><init>(I)V

    invoke-virtual {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallError;)V

    .line 142
    return-void

    .line 139
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Audio player not initialized"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 148
    .restart local v5    # "sdp":Ljava/lang/String;
    :cond_e
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "buildCallInitSdpResponse() - Done"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 160
    .restart local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_f
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v6

    if-nez v6, :cond_10

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VOICE_CALL:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    goto/16 :goto_2

    .line 162
    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_10
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/rcs/core/ims/service/ipcall/IPCallService;->FEATURE_TAGS_IP_VIDEO_CALL:[Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v4

    .local v4, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    goto/16 :goto_2

    .line 178
    .end local v4    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_11
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Send 200 OK"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 187
    .restart local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    :cond_12
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_13

    .line 192
    :goto_e
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->startMediaSession()V

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v6

    if-nez v6, :cond_14

    :goto_f
    const/4 v3, 0x0

    .line 204
    .restart local v3    # "i":I
    :goto_10
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface {v6}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 188
    .end local v3    # "i":I
    :cond_13
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "ACK request received"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 199
    :cond_14
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v6

    const-string/jumbo v7, "uas"

    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto :goto_f

    .line 209
    :cond_15
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "No ACK received for INVITE"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 217
    .end local v0    # "answer":I
    .end local v1    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v5    # "sdp":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_16
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Session initiation has failed"

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method public startMediaSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoPlayer()Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoPlayer;->start()V

    .line 480
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->start()V

    .line 484
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start video renderer"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/ipcall/TerminatingIPCallStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Start video player"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
