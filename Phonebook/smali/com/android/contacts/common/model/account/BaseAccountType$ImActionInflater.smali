.class public Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    const-string/jumbo v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    const-string/jumbo v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f090101

    .line 769
    if-nez p1, :cond_0

    return v1

    .line 770
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 780
    return v1

    .line 771
    :pswitch_0
    const v0, 0x7f0900f9

    return v0

    .line 772
    :pswitch_1
    const v0, 0x7f0900fa

    return v0

    .line 773
    :pswitch_2
    const v0, 0x7f0900fb

    return v0

    .line 774
    :pswitch_3
    const v0, 0x7f0900fc

    return v0

    .line 775
    :pswitch_4
    const v0, 0x7f0900fd

    return v0

    .line 776
    :pswitch_5
    const v0, 0x7f0900fe

    return v0

    .line 777
    :pswitch_6
    const v0, 0x7f0900ff

    return v0

    .line 778
    :pswitch_7
    const v0, 0x7f090100

    return v0

    .line 779
    :pswitch_8
    return v1

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
