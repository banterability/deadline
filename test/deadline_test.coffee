Deadline = require '../deadline'

describe 'Deadline', ->
  describe 'getTime', ->
    it 'formats tims according to AP style', ->
      d = new Deadline new Date(2013, 4, 1, 14, 4)
      d.getTime().should.equal "2:04 p.m."

    it 'adds periods to times of day', ->
      d1 = new Deadline new Date(2013, 1, 1, 11, 11)
      d2 = new Deadline new Date(2013, 3, 1, 23, 11)
      d1.getTime().should.equal "11:11 a.m."
      d2.getTime().should.equal "11:11 p.m."

    it 'removes extraneous zeros at the top of the hour', ->
      d = new Deadline new Date(2013, 7, 7, 14, 0)
      d.getTime().should.equal '2 p.m.'

    it 'returns "midnight" for 12:00 a.m.', ->
      d = new Deadline new Date(2013,0,1,0,0)
      d.getTime().should.equal 'midnight'

    it 'returns "noon" for 12:00 p.m.', ->
      d = new Deadline new Date(2013,0,1,12,0)
      d.getTime().should.equal 'noon'
