.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;
.super Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;
.source "TerminatingVideoStreamingSession.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/service/ImsService;
    .param p2, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 68
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveVideoContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v0

    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;-><init>(Lcom/sonymobile/rcs/core/ims/service/ImsService;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 72
    invoke-virtual {p0, p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->createTerminatingDialogPath(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 73
    return-void
.end method


# virtual methods
.method public closeMediaSession()V
    .locals 3

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->stop()V

    .line 288
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Exception when closing the media renderer"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public prepareMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public run()V
    .locals 25

    .prologue
    .line 80
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_3

    .line 85
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->send180Ringing(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;)V

    .line 88
    new-instance v13, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getRemoteContent()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v13, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v22, "video"

    .line 89
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-result-object v11

    .line 90
    .local v11, "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v0, v13, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "remoteHost":Ljava/lang/String;
    iget v0, v11, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    move/from16 v16, v0

    .local v16, "remotePort":I
    const-string/jumbo v22, "video"

    .line 94
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v12

    .line 95
    .local v12, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    invoke-static {v12}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v14

    .line 98
    .local v14, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/sonymobile/rcs/core/CoreListener;->handleContentSharingStreamingInvitation(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->waitInvitationAnswer()I

    move-result v4

    .local v4, "answer":I
    const/16 v22, 0x2

    .line 103
    move/from16 v0, v22

    if-eq v4, v0, :cond_4

    .line 117
    if-eqz v4, :cond_7

    const/16 v22, 0x3

    .line 141
    move/from16 v0, v22

    if-eq v4, v0, :cond_b

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 156
    invoke-static {v14}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->negociateVideoCodec(Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v19

    .line 157
    .local v19, "selectedVideoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_e

    .line 160
    :goto_1
    if-eqz v19, :cond_f

    .line 183
    :cond_0
    :goto_2
    invoke-static {v11}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v8

    .line 184
    .local v8, "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    if-nez v8, :cond_12

    .line 188
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v20

    .line 190
    .local v20, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getContent()Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/core/content/VideoContent;

    .line 191
    .local v5, "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "video/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/content/VideoContent;->setEncoding(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/content/VideoContent;->setWidth(I)V

    .line 193
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/content/VideoContent;->setHeight(I)V

    .line 200
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 203
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/content/VideoContent;->setLive(Z)V

    .line 207
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setVideoCodec(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    new-instance v23, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession$MediaPlayerEventListener;-><init>(Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoStreamingSession;)V

    invoke-interface/range {v22 .. v23}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->addListener(Lcom/sonymobile/rcs/service/api/client/media/IVideoEventListener;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->open(Ljava/lang/String;I)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSipStack()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipInterface;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "ipAddress":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getLocalRtpPort()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;ILcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;

    move-result-object v21

    .local v21, "videoSdp":Ljava/lang/String;
    const-string/jumbo v22, "recvonly"

    .line 219
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v10, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildVideoSDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 222
    .local v18, "sdp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->setLocalContent(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_14

    .line 228
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    sget-object v23, Lcom/sonymobile/rcs/core/ims/service/richcall/RichcallService;->FEATURE_TAGS_VIDEO_SHARE:[Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/network/sip/SipMessageFactory;->create200OkInviteResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v17

    .line 232
    .local v17, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sigEstablished()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getSipManager()Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/network/sip/SipManager;->sendSipMessageAndWait(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;

    move-result-object v6

    .line 239
    .local v6, "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipAck()Z

    move-result v22

    if-nez v22, :cond_15

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_18

    .line 267
    :goto_6
    new-instance v22, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v23, 0x65

    invoke-direct/range {v22 .. v23}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 278
    .end local v4    # "answer":I
    .end local v5    # "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    .end local v6    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v8    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .end local v10    # "ipAddress":Ljava/lang/String;
    .end local v11    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v12    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v13    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v14    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .end local v15    # "remoteHost":Ljava/lang/String;
    .end local v16    # "remotePort":I
    .end local v17    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v18    # "sdp":Ljava/lang/String;
    .end local v19    # "selectedVideoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .end local v20    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "videoSdp":Ljava/lang/String;
    :cond_2
    :goto_7
    return-void

    .line 81
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Initiate a new live video sharing session as terminating"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v7

    .line 270
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_19

    .line 275
    :goto_8
    new-instance v22, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v23, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    goto :goto_7

    .line 104
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "answer":I
    .restart local v11    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .restart local v12    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .restart local v13    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .restart local v14    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .restart local v15    # "remoteHost":Ljava/lang/String;
    .restart local v16    # "remotePort":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_5

    .line 109
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v9, 0x0

    .line 112
    .local v9, "i":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_6

    .line 116
    return-void

    .line 105
    .end local v9    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Session has been rejected by user"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 113
    .restart local v9    # "i":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 112
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 118
    .end local v9    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_8

    .line 122
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCallManager()Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/network/gsm/CallManager;->isCallConnected()Z

    move-result v22

    if-nez v22, :cond_9

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1e7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    .line 133
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getImsService()Lcom/sonymobile/rcs/core/ims/service/ImsService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/ImsService;->removeSession(Lcom/sonymobile/rcs/core/ims/service/ImsServiceSession;)V

    const/4 v9, 0x0

    .line 136
    .restart local v9    # "i":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_a

    .line 140
    return-void

    .line 119
    .end local v9    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Session has been rejected on timeout"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b

    .line 124
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getLocalTag()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x198

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->sendErrorResponse(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;Ljava/lang/String;I)V

    goto :goto_c

    .line 137
    .restart local v9    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionAborted(I)V

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 142
    .end local v9    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_c

    .line 145
    :goto_e
    return-void

    .line 143
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Session has been canceled"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 150
    :cond_d
    new-instance v22, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v23, 0x83

    invoke-direct/range {v22 .. v23}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 152
    return-void

    .line 158
    .restart local v19    # "selectedVideoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Terminating:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->getSupportedVideoCodecs()[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/CodecsUtils;->getVideoCodecProfile1b([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v19

    .line 165
    if-nez v19, :cond_10

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_11

    .line 174
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getInvite()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->send415Error(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 177
    new-instance v22, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;

    const/16 v23, 0x86

    invoke-direct/range {v22 .. v23}, Lcom/sonymobile/rcs/core/ims/service/richcall/ContentSharingError;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->handleError(Lcom/sonymobile/rcs/core/ims/service/ImsServiceError;)V

    .line 178
    return-void

    .line 166
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Video codec profile 1B is selected by default"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 170
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Proposed codecs are not supported"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 185
    .restart local v8    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->setOrientationHeaderId(I)V

    goto/16 :goto_3

    .restart local v5    # "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    .restart local v20    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const-string/jumbo v22, "+g.3gpp.iari-ref"

    .line 200
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 201
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/core/content/VideoContent;->setLive(Z)V

    goto/16 :goto_4

    .line 226
    .restart local v10    # "ipAddress":Ljava/lang/String;
    .restart local v18    # "sdp":Ljava/lang/String;
    .restart local v21    # "videoSdp":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Send 200 OK"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 241
    .restart local v6    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .restart local v17    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v22

    if-nez v22, :cond_16

    .line 246
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->sessionEstablished()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getVideoRenderer()Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sonymobile/rcs/service/api/client/media/IVideoRenderer;->start()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->isSessionTimerActivated(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Z

    move-result v22

    if-nez v22, :cond_17

    :goto_11
    const/4 v9, 0x0

    .line 258
    .restart local v9    # "i":I
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getListeners()Ljava/util/Vector;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;

    invoke-interface/range {v22 .. v22}, Lcom/sonymobile/rcs/core/ims/service/ImsSessionListener;->handleSessionStarted()V

    .line 258
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 242
    .end local v9    # "i":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "ACK request received"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_10

    .line 253
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getSessionTimerManager()Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;

    move-result-object v22

    const-string/jumbo v23, "uas"

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->getDialogPath()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipDialogPath;->getSessionExpireTime()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/sonymobile/rcs/core/ims/service/SessionTimerManager;->start(Ljava/lang/String;I)V

    goto :goto_11

    .line 263
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "No ACK received for INVITE"

    invoke-virtual/range {v22 .. v23}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 271
    .end local v4    # "answer":I
    .end local v5    # "content":Lcom/sonymobile/rcs/core/content/VideoContent;
    .end local v6    # "ctx":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
    .end local v8    # "extensionHeader":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .end local v10    # "ipAddress":Ljava/lang/String;
    .end local v11    # "mediaVideo":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v12    # "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v13    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v14    # "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    .end local v15    # "remoteHost":Ljava/lang/String;
    .end local v16    # "remotePort":I
    .end local v17    # "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .end local v18    # "sdp":Ljava/lang/String;
    .end local v19    # "selectedVideoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .end local v20    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "videoSdp":Ljava/lang/String;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/TerminatingVideoStreamingSession;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Session initiation has failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method

.method public startMediaSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    return-void
.end method
