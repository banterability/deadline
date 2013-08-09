Deadline = require '../deadline'

describe 'Deadline', ->
  describe 'getTime', ->
    it 'formats times according to AP style', ->
      d1 = new Deadline new Date(2013, 3, 1, 2, 4)
      d2 = new Deadline new Date(2013, 3, 1, 10, 4)
      d3 = new Deadline new Date(2013, 3, 1, 14, 4)
      d4 = new Deadline new Date(2013, 3, 1, 22, 4)

      d1.getTime().should.equal '2:04 a.m.'
      d2.getTime().should.equal '10:04 a.m.'
      d3.getTime().should.equal '2:04 p.m.'
      d4.getTime().should.equal '10:04 p.m.'

    it 'adds periods to times of day', ->
      d1 = new Deadline new Date(2013, 1, 1, 11, 11)
      d2 = new Deadline new Date(2013, 1, 1, 23, 11)

      d1.getTime().should.equal '11:11 a.m.'
      d2.getTime().should.equal '11:11 p.m.'

    describe 'special cases', ->
      it 'does not show minutes at the top of the hour', ->
        d = new Deadline new Date(2013, 7, 7, 14, 0)

        d.getTime().should.equal '2 p.m.'

      it 'returns "midnight" for 12:00 a.m.', ->
        d = new Deadline new Date(2013,0,1,0,0)

        d.getTime().should.equal 'midnight'

      it 'returns "noon" for 12:00 p.m.', ->
        d = new Deadline new Date(2013,0,1,12,0)

        d.getTime().should.equal 'noon'

  describe 'getDate', ->
    it 'formats dates according to AP style', ->
      d1 = new Deadline new Date(1992, 0, 15)
      d2 = new Deadline new Date(2005, 11, 31)
      d3 = new Deadline new Date(2009, 6, 25)
      d4 = new Deadline new Date(2013, 7, 9)

      d1.getDate().should.equal 'Jan. 15, 1992'
      d2.getDate().should.equal 'Dec. 31, 2005'
      d3.getDate().should.equal 'July 25, 2009'
      d4.getDate().should.equal 'Aug. 9'

    describe 'special cases', ->
      it 'hides the current year', ->
        d1 = new Deadline new Date(2012, 11, 31)
        d2 = new Deadline new Date(2013, 0, 1)

        d1.getDate().should.equal 'Dec. 31, 2012'
        d2.getDate().should.equal 'Jan. 1'

      describe 'abbreviating months', ->
        it 'handles January', ->
          d = new Deadline new Date(2012, 0, 1)

          d.getDate().should.equal 'Jan. 1, 2012'

        it 'handles February', ->
          d = new Deadline new Date(2012, 1, 1)

          d.getDate().should.equal 'Feb. 1, 2012'

        it 'handles March', ->
          d = new Deadline new Date(2012, 2, 1)

          d.getDate().should.equal 'March 1, 2012'

        it 'handles April', ->
          d = new Deadline new Date(2012, 3, 1)

          d.getDate().should.equal 'April 1, 2012'

        it 'handles May', ->
          d = new Deadline new Date(2012, 4, 1)

          d.getDate().should.equal 'May 1, 2012'

        it 'handles June', ->
          d = new Deadline new Date(2012, 5, 1)

          d.getDate().should.equal 'June 1, 2012'

        it 'handles July', ->
          d = new Deadline new Date(2012, 6, 1)

          d.getDate().should.equal 'July 1, 2012'

        it 'handles August', ->
          d = new Deadline new Date(2012, 7, 1)

          d.getDate().should.equal 'Aug. 1, 2012'

        it 'handles September', ->
          d = new Deadline new Date(2012, 8, 1)

          d.getDate().should.equal 'Sept. 1, 2012'

        it 'handles October', ->
          d = new Deadline new Date(2012, 9, 1)

          d.getDate().should.equal 'Oct. 1, 2012'

        it 'handles November', ->
          d = new Deadline new Date(2012, 10, 1)

          d.getDate().should.equal 'Nov. 1, 2012'

        it 'handles December', ->
          d = new Deadline new Date(2012, 11, 1)

          d.getDate().should.equal 'Dec. 1, 2012'
