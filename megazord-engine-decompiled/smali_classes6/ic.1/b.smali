.class public Lic/b;
.super Lva/b;
.source "SourceFile"


# instance fields
.field public a:LNb/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lva/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LNb/a;
    .locals 1

    iget-object v0, p0, Lic/b;->a:LNb/a;

    return-object v0
.end method

.method public b(LNb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iput-object p1, p0, Lic/b;->a:LNb/a;

    return-void
.end method
