.class Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukMeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$2;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe$2;->this$1:Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/Telephony/KeyguardSimPinPukMeView$CheckSimMe;->onSimMeCheckResponse(I)V

    .line 777
    return-void
.end method
