.class public final Li3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/a;


# instance fields
.field public final a:Lh3/a$b;

.field public final b:LH1/a;

.field public final c:Li3/f;


# direct methods
.method public constructor <init>(LH1/a;Lh3/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li3/g;->a:Lh3/a$b;

    iput-object p1, p0, Li3/g;->b:LH1/a;

    new-instance p2, Li3/f;

    invoke-direct {p2, p0}, Li3/f;-><init>(Li3/g;)V

    iput-object p2, p0, Li3/g;->c:Li3/f;

    invoke-virtual {p1, p2}, LH1/a;->s(LH1/a$c;)V

    return-void
.end method


# virtual methods
.method public final O1()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public final synthetic b()Lh3/a$b;
    .locals 1

    iget-object v0, p0, Li3/g;->a:Lh3/a$b;

    return-object v0
.end method

.method public final zza()Lh3/a$b;
    .locals 1

    iget-object v0, p0, Li3/g;->a:Lh3/a$b;

    return-object v0
.end method
