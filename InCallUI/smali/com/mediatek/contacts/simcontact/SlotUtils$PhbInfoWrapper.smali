.class final Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhbInfoWrapper"
.end annotation


# instance fields
.field private mInitialized:Z

.field private mSubId:I

.field private mUsimAnrCount:I

.field private mUsimEmailCount:I

.field private mUsimGroupMaxCount:I

.field private mUsimGroupMaxNameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getInvalidSubId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSubId:I

    .line 207
    iput p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSubId:I

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 206
    return-void
.end method


# virtual methods
.method public resetPhbInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 213
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 214
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 215
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    .line 216
    iput-boolean v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 211
    return-void
.end method
