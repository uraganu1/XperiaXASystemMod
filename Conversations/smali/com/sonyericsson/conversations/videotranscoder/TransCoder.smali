.class public Lcom/sonyericsson/conversations/videotranscoder/TransCoder;
.super Ljava/lang/Object;
.source "TransCoder.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAudioBitrate:I

.field private mAudioDecodedFrameCount:I

.field private mAudioDecoder:Landroid/media/MediaCodec;

.field private mAudioDecoderDone:Z

.field private mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioDecoderOutputData:[B

.field private mAudioEncodedFrameCount:I

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioEncoderDone:Z

.field private mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioExtractedFrameCount:I

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mAudioExtractorDone:Z

.field private mDecoderOutputAudioFormat:Landroid/media/MediaFormat;

.field private mDecoderOutputVideoFormat:Landroid/media/MediaFormat;

.field private mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

.field private mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

.field private mHeight:I

.field private mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

.field private mKeepAspectRatio:Z

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mOutputAudioTrack:I

.field private mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

.field private mOutputVideoTrack:I

.field private mStreamAudioFormat:Landroid/media/MediaFormat;

.field private mTranscodeAudio:Z

.field private mTranscodeVideo:Z

.field private mVideoBitrate:I

.field private mVideoDecodedFrameCount:I

.field private mVideoDecoder:Landroid/media/MediaCodec;

.field private mVideoDecoderDone:Z

.field private mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoEncodedFrameCount:I

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoEncoderDone:Z

.field private mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoExtractedFrameCount:I

.field private mVideoExtractor:Landroid/media/MediaExtractor;

.field private mVideoExtractorDone:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    sput-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    .line 106
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    .line 109
    const/16 v0, 0xb0

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    .line 112
    const/16 v0, 0x90

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 115
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mKeepAspectRatio:Z

    .line 118
    const v0, 0x2af80

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoBitrate:I

    .line 121
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioBitrate:I

    .line 123
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 124
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 125
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    .line 126
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    .line 128
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 130
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    .line 133
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractedFrameCount:I

    .line 134
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecodedFrameCount:I

    .line 135
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncodedFrameCount:I

    .line 137
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractedFrameCount:I

    .line 138
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecodedFrameCount:I

    .line 139
    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncodedFrameCount:I

    .line 142
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    .line 143
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderDone:Z

    .line 144
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    .line 146
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    .line 147
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderDone:Z

    .line 148
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    .line 150
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 151
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 152
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 153
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 156
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 157
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 159
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 160
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 162
    iput v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    .line 163
    iput v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    .line 165
    iput-object v1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    .line 51
    return-void
.end method

.method private createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 588
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 592
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 593
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 594
    return-object v0

    .line 589
    .end local v0    # "decoder":Landroid/media/MediaCodec;
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4
    .param p1, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 608
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 612
    .local v1, "encoder":Landroid/media/MediaCodec;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 613
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 614
    return-object v1

    .line 609
    .end local v1    # "encoder":Landroid/media/MediaCodec;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 525
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 526
    return-object v0
.end method

.method private createMuxer(Ljava/io/File;)Landroid/media/MediaMuxer;
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 626
    const/4 v2, 0x0

    .line 625
    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 4
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 545
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 546
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 547
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 548
    return-object v0

    .line 542
    .end local v0    # "decoder":Landroid/media/MediaCodec;
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    invoke-direct {v2, v1}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private createVideoEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;
    .locals 4
    .param p1, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodecInfo;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Landroid/media/MediaCodec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
        }
    .end annotation

    .prologue
    .local p3, "surfaceReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/view/Surface;>;"
    const/4 v3, 0x0

    .line 567
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    .local v1, "encoder":Landroid/media/MediaCodec;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 573
    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 574
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 575
    return-object v1

    .line 568
    .end local v1    # "encoder":Landroid/media/MediaCodec;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    invoke-direct {v2, v0}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private decodeAudio()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 815
    .local v1, "decoderInputBufferIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 816
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 817
    const-string/jumbo v0, "no audio decoder input buffer"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 819
    :cond_0
    return-void

    .line 821
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audio decoder: returned input buffer: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 825
    .local v13, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v13, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 826
    .local v3, "size":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 828
    .local v4, "presentationTime":J
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audio extractor: returned buffer of size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audio extractor: returned buffer for time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 832
    :cond_3
    if-ltz v3, :cond_4

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    .line 834
    iget-object v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    .line 833
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 836
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    .line 837
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    if-eqz v0, :cond_6

    .line 838
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 839
    const-string/jumbo v0, "video extractor: EOS"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 841
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x0

    .line 842
    const/4 v12, 0x4

    move v7, v1

    move v8, v2

    move v9, v2

    .line 841
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 844
    :cond_6
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractedFrameCount:I

    .line 813
    return-void

    .line 836
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decodeVideo(Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V
    .locals 14
    .param p1, "listener"    # Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 854
    .local v1, "decoderInputBufferIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 855
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 856
    const-string/jumbo v0, "no video decoder input buffer"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 858
    :cond_0
    return-void

    .line 860
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: returned input buffer: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 864
    .local v13, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v13, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 865
    .local v3, "size":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 867
    .local v4, "presentationTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-interface {p1, v6, v7}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onVideoResizeElapsedTime(J)V

    .line 869
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video extractor: returned buffer of size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video extractor: returned buffer for time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 873
    :cond_3
    if-ltz v3, :cond_4

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 875
    iget-object v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    .line 874
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    .line 878
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    if-eqz v0, :cond_6

    .line 879
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 880
    const-string/jumbo v0, "video extractor: EOS"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 882
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x0

    .line 883
    const/4 v12, 0x4

    move v7, v1

    move v8, v2

    move v9, v2

    .line 882
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 885
    :cond_6
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractedFrameCount:I

    .line 852
    return-void

    .line 877
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doExtractDecodeEditEncodeMux(Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 662
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 663
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 664
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_0

    .line 665
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 666
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 668
    :cond_0
    const/4 v3, 0x0

    .line 669
    .local v3, "streamAudioBuffer":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 670
    .local v0, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-nez v4, :cond_1

    .line 671
    iget v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioBitrate:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 674
    .end local v3    # "streamAudioBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 675
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 676
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_2

    .line 677
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 678
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 682
    :cond_2
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 683
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 685
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 686
    iput-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 688
    iput v8, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    .line 689
    iput v8, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    .line 691
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    .line 692
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderDone:Z

    .line 693
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    .line 695
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    .line 696
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderDone:Z

    .line 697
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    .line 699
    const/4 v2, -0x1

    .line 701
    .local v2, "pendingAudioDecoderOutputBufferIndex":I
    const/4 v1, 0x0

    .line 703
    .local v1, "muxing":Z
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractedFrameCount:I

    .line 704
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecodedFrameCount:I

    .line 705
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncodedFrameCount:I

    .line 707
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractedFrameCount:I

    .line 708
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecodedFrameCount:I

    .line 709
    iput v5, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncodedFrameCount:I

    .line 710
    :cond_3
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    if-eqz v4, :cond_7

    :cond_4
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_5

    .line 711
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    if-eqz v4, :cond_7

    .line 661
    :cond_6
    return-void

    .line 712
    :cond_7
    sget-boolean v4, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 713
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 714
    const-string/jumbo v7, "loop: V(%b){extracted:%d(done:%b) decoded:%d(done:%b) encoded:%d(done:%b)} A(%b){extracted:%d(done:%b) decoded:%d(done:%b) encoded:%d(done:%b) pending:%d} mMuxing:%b(V:%d,A:%d)"

    .line 713
    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/Object;

    .line 718
    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 719
    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecodedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncodedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    .line 720
    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v8, v10

    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v8, v10

    .line 721
    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0x9

    aput-object v9, v8, v10

    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecodedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xa

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0xb

    aput-object v9, v8, v10

    .line 722
    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncodedFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xc

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0xd

    aput-object v9, v8, v10

    .line 723
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xe

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0xf

    aput-object v9, v8, v10

    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x10

    aput-object v9, v8, v10

    .line 724
    iget v9, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x11

    aput-object v9, v8, v10

    .line 713
    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 731
    :cond_8
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractorDone:Z

    if-eqz v4, :cond_17

    .line 740
    :cond_9
    :goto_1
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-nez v4, :cond_a

    if-eqz v1, :cond_a

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    if-eqz v4, :cond_19

    .line 756
    :cond_a
    :goto_2
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_c

    .line 757
    :cond_b
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    if-eqz v4, :cond_1c

    .line 762
    :cond_c
    :goto_3
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderDone:Z

    if-eqz v4, :cond_1d

    .line 768
    :cond_d
    :goto_4
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    if-eqz v4, :cond_1f

    .line 774
    :cond_e
    :goto_5
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderDone:Z

    if-eqz v4, :cond_21

    .line 780
    :cond_f
    :goto_6
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    if-eqz v4, :cond_23

    .line 785
    :cond_10
    :goto_7
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_3

    .line 786
    :cond_11
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_3

    .line 787
    :cond_12
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    if-eqz v4, :cond_14

    .line 788
    sget-boolean v4, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v4, :cond_13

    .line 789
    const-string/jumbo v4, "muxer: adding video track."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 791
    :cond_13
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    .line 793
    :cond_14
    sget-boolean v4, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v4, :cond_15

    .line 794
    const-string/jumbo v4, "muxer: adding audio track."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 796
    :cond_15
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    if-nez v4, :cond_25

    .line 797
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mStreamAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    .line 801
    :goto_8
    sget-boolean v4, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v4, :cond_16

    .line 802
    const-string/jumbo v4, "muxer: starting"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 804
    :cond_16
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    .line 805
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 731
    :cond_17
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_18

    if-eqz v1, :cond_9

    .line 733
    :cond_18
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->decodeVideo(Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V

    goto/16 :goto_1

    .line 741
    :cond_19
    iput v11, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 742
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 744
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v4, :cond_1a

    .line 745
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 746
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 747
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    invoke-virtual {v4, v7, v3, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 749
    :cond_1a
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v5

    :goto_9
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    .line 750
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractorDone:Z

    if-eqz v4, :cond_a

    .line 751
    iput-boolean v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    goto/16 :goto_2

    :cond_1b
    move v4, v6

    .line 749
    goto :goto_9

    .line 758
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->decodeAudio()V

    goto/16 :goto_3

    .line 762
    :cond_1d
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_1e

    if-eqz v1, :cond_d

    .line 764
    :cond_1e
    invoke-direct {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->encodeVideo()V

    goto/16 :goto_4

    .line 768
    :cond_1f
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_20

    if-eqz v1, :cond_e

    .line 770
    :cond_20
    invoke-direct {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->feedMuxerVideo()V

    goto/16 :goto_5

    .line 774
    :cond_21
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_22

    if-eqz v1, :cond_f

    .line 776
    :cond_22
    invoke-direct {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->encodeAudio()V

    goto/16 :goto_6

    .line 780
    :cond_23
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    if-eqz v4, :cond_24

    if-eqz v1, :cond_10

    .line 782
    :cond_24
    invoke-direct {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->feedMuxerAudio()V

    goto/16 :goto_7

    .line 799
    :cond_25
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    goto/16 :goto_8
.end method

.method private encodeAudio()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v4, 0x0

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    .line 896
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 895
    invoke-virtual {v0, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 897
    .local v8, "decoderOutputBufferIndex":I
    packed-switch v8, :pswitch_data_0

    .line 919
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: returned output buffer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: returned buffer of size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 926
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 927
    const-string/jumbo v0, "audio decoder: codec config buffer"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 930
    return-void

    .line 899
    :pswitch_0
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 900
    const-string/jumbo v0, "no audio decoder output buffer"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 902
    :cond_2
    return-void

    .line 904
    :pswitch_1
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 905
    const-string/jumbo v0, "audio decoder: output buffers changed"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 907
    :cond_3
    return-void

    .line 909
    :pswitch_2
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: output format changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 914
    :cond_4
    return-void

    .line 932
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: returned buffer for time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 937
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 938
    .local v1, "index":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 939
    .local v9, "inputBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 940
    .local v7, "decodedBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    array-length v0, v0

    .line 941
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 940
    if-eq v0, v2, :cond_8

    .line 942
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    .line 944
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 945
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 946
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputData:[B

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 949
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 950
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 951
    iget-object v6, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 948
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 954
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 955
    const-string/jumbo v0, "audio decoder: EOS"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 957
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoderDone:Z

    .line 959
    :cond_a
    iget v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecodedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecodedFrameCount:I

    .line 894
    return-void

    .line 897
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private encodeVideo()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/GLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 971
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 972
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    .line 971
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 973
    .local v0, "decoderOutputBufferIndex":I
    packed-switch v0, :pswitch_data_0

    .line 994
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: returned output buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: returned buffer of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 996
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1000
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 1001
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1002
    const-string/jumbo v2, "video decoder: codec config buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1005
    return-void

    .line 975
    :pswitch_0
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 976
    const-string/jumbo v2, "no video decoder output buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 978
    :cond_2
    return-void

    .line 980
    :pswitch_1
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 981
    const-string/jumbo v2, "video decoder: output buffers changed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 983
    :cond_3
    return-void

    .line 985
    :pswitch_2
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 986
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: output format changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mDecoderOutputVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 990
    :cond_4
    return-void

    .line 1007
    :cond_5
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: returned buffer for time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1012
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    .line 1013
    .local v1, "render":Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1014
    if-eqz v1, :cond_a

    .line 1015
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1016
    const-string/jumbo v2, "output surface: await new image"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1018
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->awaitNewImage()V

    .line 1020
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 1021
    const-string/jumbo v2, "output surface: draw image"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1023
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->drawImage()V

    .line 1024
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    .line 1025
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1024
    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->setPresentationTime(J)V

    .line 1026
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 1027
    const-string/jumbo v2, "input surface: swap buffers"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1029
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->swapBuffers()Z

    .line 1030
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1031
    const-string/jumbo v2, "video encoder: notified of new frame"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1034
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 1035
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1036
    const-string/jumbo v2, "video decoder: EOS"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1038
    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoderDone:Z

    .line 1039
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1041
    :cond_c
    iget v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecodedFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecodedFrameCount:I

    .line 970
    return-void

    .line 1012
    .end local v1    # "render":Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "render":Z
    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private feedMuxerAudio()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1051
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 1052
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    .line 1051
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 1053
    .local v1, "encoderOutputBufferIndex":I
    packed-switch v1, :pswitch_data_0

    .line 1077
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio encoder: returned output buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio encoder: returned buffer of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1083
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1084
    .local v0, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1085
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1086
    const-string/jumbo v2, "audio encoder: codec config buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1089
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1090
    return-void

    .line 1055
    .end local v0    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    :pswitch_0
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1056
    const-string/jumbo v2, "no audio encoder output buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1058
    :cond_2
    return-void

    .line 1060
    :pswitch_1
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1061
    const-string/jumbo v2, "audio encoder: output buffers changed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1063
    :cond_3
    return-void

    .line 1065
    :pswitch_2
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1066
    const-string/jumbo v2, "audio encoder: output format changed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1068
    :cond_4
    iget v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    if-ltz v2, :cond_5

    .line 1069
    const-string/jumbo v2, "audio encoder changed its output format again?"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1071
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputAudioFormat:Landroid/media/MediaFormat;

    .line 1072
    return-void

    .line 1092
    .restart local v0    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audio encoder: returned buffer for time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1097
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_8

    .line 1098
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputAudioTrack:I

    .line 1099
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1098
    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1101
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 1102
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 1103
    const-string/jumbo v2, "audio encoder: EOS"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1105
    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoderDone:Z

    .line 1107
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1108
    iget v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncodedFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncodedFrameCount:I

    .line 1050
    return-void

    .line 1053
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private feedMuxerVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1118
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 1119
    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    .line 1118
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 1120
    .local v1, "encoderOutputBufferIndex":I
    packed-switch v1, :pswitch_data_0

    .line 1143
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: returned output buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: returned buffer of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1145
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1149
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1150
    .local v0, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1151
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1152
    const-string/jumbo v2, "video encoder: codec config buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1155
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1156
    return-void

    .line 1122
    .end local v0    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    :pswitch_0
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1123
    const-string/jumbo v2, "no video encoder output buffer"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1125
    :cond_2
    return-void

    .line 1127
    :pswitch_1
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1128
    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1130
    :cond_3
    return-void

    .line 1132
    :pswitch_2
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1133
    const-string/jumbo v2, "video encoder: output format changed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1135
    :cond_4
    iget v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    if-ltz v2, :cond_5

    .line 1136
    const-string/jumbo v2, "video encoder changed its output format again?"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1138
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mEncoderOutputVideoFormat:Landroid/media/MediaFormat;

    .line 1139
    return-void

    .line 1158
    .restart local v0    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_6
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: returned buffer for time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1163
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_8

    .line 1164
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputVideoTrack:I

    .line 1165
    iget-object v4, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1164
    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1167
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 1168
    sget-boolean v2, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 1169
    const-string/jumbo v2, "video encoder: EOS"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1171
    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoderDone:Z

    .line 1173
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1174
    iget v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncodedFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncodedFrameCount:I

    .line 1117
    return-void

    .line 1120
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 3
    .param p1, "extractor"    # Landroid/media/MediaExtractor;

    .prologue
    .line 644
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 645
    sget-boolean v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "format for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 647
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 646
    invoke-static {v2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 649
    :cond_0
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 651
    return v0

    .line 644
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 3
    .param p1, "extractor"    # Landroid/media/MediaExtractor;

    .prologue
    .line 630
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 631
    sget-boolean v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "format for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 632
    invoke-static {v2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 635
    :cond_0
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 637
    return v0

    .line 630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1186
    const-string/jumbo v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/ParseDataException;
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1224
    .local v0, "metaRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1227
    const/16 v4, 0x18

    .line 1226
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "orientationString":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1236
    .local v2, "orientation":I
    return v2

    .line 1231
    .end local v2    # "orientation":I
    :catch_0
    move-exception v1

    .line 1232
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/sonyericsson/conversations/ui/ParseDataException;

    const-string/jumbo v5, "Could not retrieve resolution values from the videos metadata"

    invoke-direct {v4, v5, v1}, Lcom/sonyericsson/conversations/ui/ParseDataException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method private static isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1182
    invoke-static {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1178
    invoke-static {p0}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 11
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1194
    new-instance v1, Landroid/media/MediaCodecList;

    invoke-direct {v1, v5}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 1195
    .local v1, "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 1196
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1195
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1200
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 1201
    .local v3, "types":[Ljava/lang/String;
    array-length v9, v3

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v2, v3, v4

    .line 1202
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1203
    return-object v0

    .line 1201
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1207
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public setKeepAspectRatio()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mKeepAspectRatio:Z

    .line 171
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 186
    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    rem-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2

    .line 187
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v0, "WARNING: width or height not multiple of 16, correcting..."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 190
    :cond_1
    rem-int/lit8 v0, p1, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    .line 191
    rem-int/lit8 v0, p2, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr p2, v0

    .line 193
    :cond_2
    iput p1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    .line 194
    iput p2, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 185
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .param p1, "bitrate"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoBitrate:I

    .line 178
    return-void
.end method

.method public transcode(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)Landroid/net/Uri;
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputFileUri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;,
            Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;
        }
    .end annotation

    .prologue
    .line 219
    const-string/jumbo v28, "video/avc"

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v24

    .line 220
    .local v24, "videoCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v24, :cond_0

    .line 221
    const-string/jumbo v28, "Unable to find an appropriate codec for video/avc"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 222
    const/16 v28, 0x0

    return-object v28

    .line 224
    :cond_0
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_1

    .line 225
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "video found codec: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    :cond_1
    const-string/jumbo v28, "audio/mp4a-latm"

    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 229
    .local v5, "audioCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v5, :cond_2

    .line 230
    const-string/jumbo v28, "Unable to find an appropriate codec for audio/mp4a-latm"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 231
    const/16 v28, 0x0

    return-object v28

    .line 233
    :cond_2
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_3

    .line 234
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "audio found codec: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 237
    :cond_3
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 238
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 239
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    .line 240
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 241
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    .line 242
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 243
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 244
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 246
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    .line 248
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeVideo:Z

    move/from16 v28, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v28, :cond_18

    .line 250
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v25

    .line 256
    .local v25, "videoInputTrack":I
    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 257
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    const-string/jumbo v29, "Could not find a valid track id!"

    invoke-direct/range {v28 .. v29}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .end local v25    # "videoInputTrack":I
    :catchall_0
    move-exception v28

    .line 445
    sget-boolean v29, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v29, :cond_4

    .line 446
    const-string/jumbo v29, "releasing extractor, decoder, encoder, and muxer"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 449
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaExtractor;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    .line 456
    :cond_5
    :goto_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v29, v0

    if-eqz v29, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    .line 463
    :cond_6
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->stop()V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    .line 471
    :cond_7
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    .line 478
    :cond_8
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->stop()V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15

    .line 486
    :cond_9
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->stop()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16

    .line 494
    :cond_a
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->stop()V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaCodec;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17

    .line 502
    :cond_b
    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaMuxer;->stop()V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/MediaMuxer;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_18

    .line 510
    :cond_c
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_19

    .line 444
    :cond_d
    :goto_8
    throw v28

    .line 251
    :catch_0
    move-exception v11

    .line 252
    .local v11, "e":Ljava/io/IOException;
    :try_start_c
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 259
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v25    # "videoInputTrack":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    .line 262
    .local v14, "inputFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mKeepAspectRatio:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 263
    const-string/jumbo v28, "width"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v26, v0

    .line 264
    .local v26, "w":F
    const-string/jumbo v28, "height"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v13, v0

    .line 265
    .local v13, "h":F
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_f

    .line 266
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Width = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " Height = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 268
    :cond_f
    div-float v4, v26, v13

    .line 269
    .local v4, "aspRatio":F
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_10

    .line 270
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "set Width = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " set Height = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " asp = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 273
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v28, v4

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 274
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_11

    .line 275
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "New uncorrected Height = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 277
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v29, v0

    rem-int/lit8 v29, v29, 0x10

    rsub-int/lit8 v29, v29, 0x10

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v28, v0

    const/16 v29, 0x90

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_12

    .line 279
    const/16 v28, 0x90

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v4

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    .line 282
    :cond_12
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_13

    .line 283
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "New Width = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " New Height = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 287
    .end local v4    # "aspRatio":F
    .end local v13    # "h":F
    .end local v26    # "w":F
    :cond_13
    const/16 v20, 0x0

    .line 289
    .local v20, "rotationDegrees":I
    :try_start_d
    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getVideoOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    :try_end_d
    .catch Lcom/sonyericsson/conversations/ui/ParseDataException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v20

    .line 296
    :cond_14
    :goto_9
    const/16 v28, 0x5a

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    const/16 v28, 0x10e

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 297
    :cond_15
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v27, v0

    .line 298
    .local v27, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    .line 299
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    .line 300
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_16

    .line 301
    const-string/jumbo v28, "Width after rotation = "

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    .line 302
    const-string/jumbo v29, "Height after rotation = "

    .line 301
    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v29, v0

    .line 301
    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 311
    .end local v27    # "width":I
    :cond_16
    const-string/jumbo v28, "video/avc"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mHeight:I

    move/from16 v30, v0

    .line 310
    invoke-static/range {v28 .. v30}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v18

    .line 317
    .local v18, "outputVideoFormat":Landroid/media/MediaFormat;
    const-string/jumbo v28, "color-format"

    const v29, 0x7f000789

    .line 316
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 318
    const-string/jumbo v28, "bitrate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoBitrate:I

    move/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 319
    const-string/jumbo v28, "frame-rate"

    const/16 v29, 0xf

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 320
    const-string/jumbo v28, "i-frame-interval"

    .line 321
    const/16 v29, 0xa

    .line 320
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 322
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_17

    .line 323
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "video format: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 329
    :cond_17
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 330
    .local v15, "inputSurfaceReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/view/Surface;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createVideoEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;Ljava/util/concurrent/atomic/AtomicReference;)Landroid/media/MediaCodec;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 332
    new-instance v29, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/Surface;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 334
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->setupEgl()V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->makeCurrent()V
    :try_end_f
    .catch Lcom/sonyericsson/conversations/videotranscoder/EGLException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 341
    :try_start_10
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    invoke-direct/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 343
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->setup()V
    :try_end_11
    .catch Lcom/sonyericsson/conversations/videotranscoder/GLException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 347
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->prepareForDrawing()V

    .line 350
    .end local v14    # "inputFormat":Landroid/media/MediaFormat;
    .end local v15    # "inputSurfaceReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/view/Surface;>;"
    .end local v18    # "outputVideoFormat":Landroid/media/MediaFormat;
    .end local v20    # "rotationDegrees":I
    .end local v25    # "videoInputTrack":I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    move/from16 v28, v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez v28, :cond_1b

    .line 352
    :try_start_13
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 357
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 358
    .local v6, "audioInputTrack":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v6, v0, :cond_1d

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    .line 361
    .restart local v14    # "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v28, "mime"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 360
    invoke-static/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 362
    .local v7, "audioStreamCodecInfo":Landroid/media/MediaCodecInfo;
    if-nez v7, :cond_1a

    .line 363
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_19

    .line 364
    const-string/jumbo v28, "Unsupported audio codec"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 366
    :cond_19
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    .line 368
    :cond_1a
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mStreamAudioFormat:Landroid/media/MediaFormat;

    .line 377
    .end local v6    # "audioInputTrack":I
    .end local v7    # "audioStreamCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v14    # "inputFormat":Landroid/media/MediaFormat;
    :cond_1b
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    move/from16 v28, v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v28, :cond_1c

    .line 379
    :try_start_15
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 383
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 384
    .restart local v6    # "audioInputTrack":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    .line 387
    .restart local v14    # "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v28, "audio/mp4a-latm"

    const v29, 0xac44

    .line 388
    const/16 v30, 0x2

    .line 386
    invoke-static/range {v28 .. v30}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v16

    .line 389
    .local v16, "outputAudioFormat":Landroid/media/MediaFormat;
    const-string/jumbo v28, "bitrate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioBitrate:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 391
    const-string/jumbo v28, "aac-profile"

    const/16 v29, 0x5

    .line 390
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    .line 404
    .end local v6    # "audioInputTrack":I
    .end local v14    # "inputFormat":Landroid/media/MediaFormat;
    .end local v16    # "outputAudioFormat":Landroid/media/MediaFormat;
    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "mounted"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1f

    .line 405
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    const-string/jumbo v29, "Storage unavailable."

    invoke-direct/range {v28 .. v29}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 290
    .restart local v14    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v20    # "rotationDegrees":I
    .restart local v25    # "videoInputTrack":I
    :catch_1
    move-exception v8

    .line 291
    .local v8, "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_14

    .line 292
    const-string/jumbo v28, "Could not get orientation for "

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    .line 293
    const-string/jumbo v29, ". Transcoding video with orientation 0"

    .line 292
    invoke-virtual/range {v28 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    goto/16 :goto_9

    .line 336
    .end local v8    # "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    .restart local v15    # "inputSurfaceReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/view/Surface;>;"
    .restart local v18    # "outputVideoFormat":Landroid/media/MediaFormat;
    :catch_2
    move-exception v9

    .line 337
    .local v9, "e":Lcom/sonyericsson/conversations/videotranscoder/EGLException;
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 344
    .end local v9    # "e":Lcom/sonyericsson/conversations/videotranscoder/EGLException;
    :catch_3
    move-exception v10

    .line 345
    .local v10, "e":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 353
    .end local v10    # "e":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    .end local v14    # "inputFormat":Landroid/media/MediaFormat;
    .end local v15    # "inputSurfaceReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/view/Surface;>;"
    .end local v18    # "outputVideoFormat":Landroid/media/MediaFormat;
    .end local v20    # "rotationDegrees":I
    .end local v25    # "videoInputTrack":I
    :catch_4
    move-exception v11

    .line 354
    .restart local v11    # "e":Ljava/io/IOException;
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 370
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v6    # "audioInputTrack":I
    :cond_1d
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_1e

    .line 371
    const-string/jumbo v28, "No audio track!"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 373
    :cond_1e
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mTranscodeAudio:Z

    goto/16 :goto_a

    .line 380
    .end local v6    # "audioInputTrack":I
    :catch_5
    move-exception v11

    .line 381
    .restart local v11    # "e":Ljava/io/IOException;
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 409
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1f
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "Video"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .local v21, "targetFileName":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 413
    new-instance v17, Ljava/io/File;

    const-string/jumbo v28, "im_resized_images_dir"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v28

    .line 414
    const-string/jumbo v29, ".mp4"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 413
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 417
    .local v17, "outputFile":Ljava/io/File;
    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->createMuxer(Ljava/io/File;)Landroid/media/MediaMuxer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 423
    :try_start_18
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->doExtractDecodeEditEncodeMux(Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V
    :try_end_18
    .catch Lcom/sonyericsson/conversations/videotranscoder/GLException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 428
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 429
    .local v22, "sizeJpg":J
    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v28

    cmp-long v28, v22, v28

    if-gtz v28, :cond_2a

    .line 431
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v19

    .line 445
    .local v19, "resizedUri":Landroid/net/Uri;
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_20

    .line 446
    const-string/jumbo v28, "releasing extractor, decoder, encoder, and muxer"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 449
    :cond_20
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_21

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaExtractor;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    .line 456
    :cond_21
    :goto_b
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_22

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaExtractor;->release()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    .line 463
    :cond_22
    :goto_c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->stop()V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->release()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    .line 471
    :cond_23
    :goto_d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mOutputSurface:Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/OutputSurface;->release()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    .line 478
    :cond_24
    :goto_e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    if-eqz v28, :cond_25

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->stop()V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->release()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c

    .line 486
    :cond_25
    :goto_f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    if-eqz v28, :cond_26

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->stop()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->release()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d

    .line 494
    :cond_26
    :goto_10
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    if-eqz v28, :cond_27

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->stop()V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaCodec;->release()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    .line 502
    :cond_27
    :goto_11
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_28

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaMuxer;->stop()V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/MediaMuxer;->release()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    .line 510
    :cond_28
    :goto_12
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->mInputSurface:Lcom/sonyericsson/conversations/videotranscoder/InputSurface;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sonyericsson/conversations/videotranscoder/InputSurface;->release()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_10

    .line 442
    :cond_29
    :goto_13
    return-object v19

    .line 418
    .end local v19    # "resizedUri":Landroid/net/Uri;
    .end local v22    # "sizeJpg":J
    :catch_6
    move-exception v11

    .line 419
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_23
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v11}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 424
    .end local v11    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 425
    .restart local v10    # "e":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 434
    .end local v10    # "e":Lcom/sonyericsson/conversations/videotranscoder/GLException;
    .restart local v22    # "sizeJpg":J
    :cond_2a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v28

    if-nez v28, :cond_2b

    .line 435
    sget-boolean v28, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->DEBUG:Z

    if-eqz v28, :cond_2b

    .line 436
    const-string/jumbo v28, "Failed to delete file"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 439
    :cond_2b
    new-instance v28, Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;

    .line 440
    const-string/jumbo v29, "Compression resulted in a larger file than the original file"

    .line 439
    invoke-direct/range {v28 .. v29}, Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 452
    .restart local v19    # "resizedUri":Landroid/net/Uri;
    :catch_8
    move-exception v12

    .line 453
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing videoExtractor"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 459
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v12

    .line 460
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing audioExtractor"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 467
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v12

    .line 468
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing videoDecoder"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 474
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v12

    .line 475
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing outputSurface"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 482
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v12

    .line 483
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing videoEncoder"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 490
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v12

    .line 491
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing audioDecoder"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 498
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v12

    .line 499
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing audioEncoder"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 506
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v12

    .line 507
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing muxer"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 513
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v12

    .line 514
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, "error while releasing inputSurface"

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 452
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "outputFile":Ljava/io/File;
    .end local v19    # "resizedUri":Landroid/net/Uri;
    .end local v21    # "targetFileName":Ljava/lang/StringBuilder;
    .end local v22    # "sizeJpg":J
    :catch_11
    move-exception v12

    .line 453
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing videoExtractor"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v12

    .line 460
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing audioExtractor"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v12

    .line 468
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing videoDecoder"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 474
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v12

    .line 475
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing outputSurface"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 482
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v12

    .line 483
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing videoEncoder"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 490
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v12

    .line 491
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing audioDecoder"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 498
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v12

    .line 499
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing audioEncoder"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 506
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_18
    move-exception v12

    .line 507
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing muxer"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 513
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_19
    move-exception v12

    .line 514
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, "error while releasing inputSurface"

    invoke-static/range {v29 .. v29}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_8
.end method
