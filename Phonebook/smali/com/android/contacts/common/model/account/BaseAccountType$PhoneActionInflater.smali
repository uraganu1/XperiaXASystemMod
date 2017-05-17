.class public Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f0900cc

    .line 653
    if-nez p1, :cond_0

    return v1

    .line 654
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 675
    const v0, 0x7f0900c5

    return v0

    .line 655
    :pswitch_0
    const v0, 0x7f0900c6

    return v0

    .line 656
    :pswitch_1
    const v0, 0x7f0900c7

    return v0

    .line 657
    :pswitch_2
    const v0, 0x7f0900c8

    return v0

    .line 658
    :pswitch_3
    const v0, 0x7f0900c9

    return v0

    .line 659
    :pswitch_4
    const v0, 0x7f0900ca

    return v0

    .line 660
    :pswitch_5
    const v0, 0x7f0900cb

    return v0

    .line 661
    :pswitch_6
    return v1

    .line 662
    :pswitch_7
    const v0, 0x7f0900cd

    return v0

    .line 663
    :pswitch_8
    const v0, 0x7f0900ce

    return v0

    .line 664
    :pswitch_9
    const v0, 0x7f0900cf

    return v0

    .line 665
    :pswitch_a
    const v0, 0x7f0900d0

    return v0

    .line 666
    :pswitch_b
    const v0, 0x7f0900d1

    return v0

    .line 667
    :pswitch_c
    const v0, 0x7f0900d2

    return v0

    .line 668
    :pswitch_d
    const v0, 0x7f0900d3

    return v0

    .line 669
    :pswitch_e
    const v0, 0x7f0900d4

    return v0

    .line 670
    :pswitch_f
    const v0, 0x7f0900d5

    return v0

    .line 671
    :pswitch_10
    const v0, 0x7f0900d6

    return v0

    .line 672
    :pswitch_11
    const v0, 0x7f0900d7

    return v0

    .line 673
    :pswitch_12
    const v0, 0x7f0900d8

    return v0

    .line 674
    :pswitch_13
    const v0, 0x7f0900d9

    return v0

    .line 654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
