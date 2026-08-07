.class public final Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lw3/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw3/d$a;->DEFAULT:Lw3/d$a;

    iput-object v0, p0, Lw3/a;->b:Lw3/d$a;

    return-void
.end method

.method public static b()Lw3/a;
    .locals 1

    new-instance v0, Lw3/a;

    invoke-direct {v0}, Lw3/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lw3/d;
    .locals 3

    new-instance v0, Lw3/a$a;

    iget v1, p0, Lw3/a;->a:I

    iget-object v2, p0, Lw3/a;->b:Lw3/d$a;

    invoke-direct {v0, v1, v2}, Lw3/a$a;-><init>(ILw3/d$a;)V

    return-object v0
.end method

.method public c(Lw3/d$a;)Lw3/a;
    .locals 0

    iput-object p1, p0, Lw3/a;->b:Lw3/d$a;

    return-object p0
.end method

.method public d(I)Lw3/a;
    .locals 0

    iput p1, p0, Lw3/a;->a:I

    return-object p0
.end method
