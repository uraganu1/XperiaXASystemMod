.class public Lcom/mediatek/lbs/em2/utils/AgpsInterface;
.super Ljava/lang/Object;
.source "AgpsInterface.java"


# instance fields
.field protected client:Landroid/net/LocalSocket;

.field protected in:Ljava/io/DataInputStream;

.field protected out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->checkVersion()V

    .line 111
    return-void
.end method

.method private getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "config"    # Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 404
    .local v0, "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 405
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 406
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 408
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v1

    .line 409
    .local v1, "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 410
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 411
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 412
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 413
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 414
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 415
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 416
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 418
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v3

    .line 419
    .local v3, "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 420
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 421
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 422
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 423
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 424
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 425
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 426
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 427
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 428
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 429
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 430
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 431
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 432
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 433
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 434
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    const/16 v4, 0x69

    .line 435
    if-ge p1, v4, :cond_0

    :goto_0
    const/16 v4, 0x6a

    .line 438
    if-ge p1, v4, :cond_1

    :goto_1
    const/16 v4, 0x6b

    .line 441
    if-ge p1, v4, :cond_2

    :goto_2
    const/16 v4, 0x6c

    .line 444
    if-ge p1, v4, :cond_3

    :goto_3
    const/16 v4, 0x6d

    .line 448
    if-ge p1, v4, :cond_4

    :goto_4
    const/16 v4, 0x6e

    .line 451
    if-ge p1, v4, :cond_5

    :goto_5
    const/16 v4, 0x6f

    .line 454
    if-ge p1, v4, :cond_6

    .line 458
    :goto_6
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v2

    .line 459
    .local v2, "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 460
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 461
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 462
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 463
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 464
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 465
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 466
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 467
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 468
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 469
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 470
    return-void

    .line 436
    .end local v2    # "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    goto :goto_0

    .line 439
    :cond_1
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->certFromSdcard:Z

    goto/16 :goto_1

    .line 442
    :cond_2
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->autoProfileEnable:Z

    goto/16 :goto_2

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut2:B

    .line 446
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut3:B

    goto/16 :goto_3

    .line 449
    :cond_4
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->apnEnable:Z

    goto/16 :goto_4

    .line 452
    :cond_5
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->syncToslp:Z

    goto/16 :goto_5

    .line 455
    :cond_6
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/UpSetting;->udpEnable:Z

    goto/16 :goto_6
.end method


# virtual methods
.method public checkVersion()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 198
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 199
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 200
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 202
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 204
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v3

    int-to-short v1, v3

    .line 205
    .local v1, "majorVersion":S
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v3

    int-to-short v2, v3

    .line 207
    .local v2, "minorVersion":S
    if-ne v1, v5, :cond_0

    .line 211
    if-lt v2, v5, :cond_1

    .line 217
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 223
    return-void

    .line 208
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app maj ver=1 is not equal to AGPSD\'s maj ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v1    # "majorVersion":S
    .end local v2    # "minorVersion":S
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v3

    .line 212
    .restart local v1    # "majorVersion":S
    .restart local v2    # "minorVersion":S
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app min ver=1 is greater than AGPSD\'s min ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 1377
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-nez v0, :cond_0

    .line 1364
    :goto_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    .line 1365
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "agpsd2"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1369
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1371
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    .line 1372
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    .line 1373
    return-void

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    goto :goto_0
.end method

.method public getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 229
    .local v0, "config":Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 231
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 232
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    const/16 v2, 0x64

    .line 235
    invoke-direct {p0, v2, v0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V

    .line 238
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 244
    return-object v0

    .line 243
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v2
.end method

.method public setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .prologue
    .line 1115
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1117
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdb

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1118
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1121
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-boolean v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 1122
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1123
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1124
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1126
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1132
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1138
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1136
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method
