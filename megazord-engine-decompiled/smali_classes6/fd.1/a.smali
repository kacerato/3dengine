.class public Lfd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/a$a;
    }
.end annotation


# instance fields
.field public a:Lfd/a$a;


# direct methods
.method public constructor <init>(Lfd/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "injection"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/a;->a:Lfd/a$a;

    return-void
.end method
