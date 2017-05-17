.class Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;
.super Ljava/lang/Object;
.source "ImdnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeliveryStatus"
.end annotation


# instance fields
.field private contact:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->contact:Ljava/lang/String;

    .line 274
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->msgId:Ljava/lang/String;

    .line 275
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->status:Ljava/lang/String;

    .line 276
    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnManager$DeliveryStatus;->status:Ljava/lang/String;

    return-object v0
.end method
