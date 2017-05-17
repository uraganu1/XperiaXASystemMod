.class public Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionAltInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f0900e1

    .line 688
    if-nez p1, :cond_0

    return v1

    .line 689
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 710
    const v0, 0x7f0900da

    return v0

    .line 690
    :pswitch_0
    const v0, 0x7f0900db

    return v0

    .line 691
    :pswitch_1
    const v0, 0x7f0900dc

    return v0

    .line 692
    :pswitch_2
    const v0, 0x7f0900dd

    return v0

    .line 693
    :pswitch_3
    const v0, 0x7f0900de

    return v0

    .line 694
    :pswitch_4
    const v0, 0x7f0900df

    return v0

    .line 695
    :pswitch_5
    const v0, 0x7f0900e0

    return v0

    .line 696
    :pswitch_6
    return v1

    .line 697
    :pswitch_7
    const v0, 0x7f0900e2

    return v0

    .line 698
    :pswitch_8
    const v0, 0x7f0900e3

    return v0

    .line 699
    :pswitch_9
    const v0, 0x7f0900e4

    return v0

    .line 700
    :pswitch_a
    const v0, 0x7f0900e5

    return v0

    .line 701
    :pswitch_b
    const v0, 0x7f0900e6

    return v0

    .line 702
    :pswitch_c
    const v0, 0x7f0900e7

    return v0

    .line 703
    :pswitch_d
    const v0, 0x7f0900e8

    return v0

    .line 704
    :pswitch_e
    const v0, 0x7f0900e9

    return v0

    .line 705
    :pswitch_f
    const v0, 0x7f0900ea

    return v0

    .line 706
    :pswitch_10
    const v0, 0x7f0900eb

    return v0

    .line 707
    :pswitch_11
    const v0, 0x7f0900ec

    return v0

    .line 708
    :pswitch_12
    const v0, 0x7f0900ed

    return v0

    .line 709
    :pswitch_13
    const v0, 0x7f0900ee

    return v0

    .line 689
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

    .line 683
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
