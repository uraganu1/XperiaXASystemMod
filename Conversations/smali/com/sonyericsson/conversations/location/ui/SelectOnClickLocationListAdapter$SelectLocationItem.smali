.class Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;
.super Ljava/lang/Object;
.source "SelectOnClickLocationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectLocationItem"
.end annotation


# instance fields
.field private mIcon:I

.field private mId:J

.field private mLabel:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mIcon:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mId:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(JLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-wide p1, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mId:J

    .line 109
    iput-object p3, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    .line 110
    iput p4, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mIcon:I

    .line 107
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectOnClickLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
