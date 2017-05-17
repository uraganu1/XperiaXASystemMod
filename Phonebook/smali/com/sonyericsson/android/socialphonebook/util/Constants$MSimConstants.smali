.class public Lcom/sonyericsson/android/socialphonebook/util/Constants$MSimConstants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSimConstants"
.end annotation


# static fields
.field public static final ADN_SUB1_ACCOUNT_NAME:Ljava/lang/String; = "SIM1 contacts"

.field public static final ADN_SUB1_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.adnsub1contacts"

.field public static final ADN_SUB2_ACCOUNT_NAME:Ljava/lang/String; = "SIM2 contacts"

.field public static final ADN_SUB2_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.adnsub2contacts"

.field public static final DUAL_SLOT_1:I = 0x0

.field public static final DUAL_SLOT_2:I = 0x1

.field public static final SINGLE_SLOT:I = -0x1

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
