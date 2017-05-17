.class Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService$1;
.super Ljava/lang/Thread;
.source "CapabilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService$1;->this$0:Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->handleAddressBookHasChanged()V

    .line 138
    return-void
.end method
