.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/common/model/ValuesDelta;
.source "CustomContactListFilterActivity.java"


# instance fields
.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 290
    return-void
.end method
